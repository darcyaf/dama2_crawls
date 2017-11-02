import scrapy
import base64
import hashlib
import requests
import sys,os
import time
import pickle
from scrapy.http import Request, FormRequest 
from dama2_crawls.items import Dama2CrawlsItem
from selenium import webdriver
from PIL import Image

def md5str(str):
    return hashlib.md5(str.encode(encoding='utf-8')).hexdigest()

def md5(byte):
    return hashlib.md5(byte).hexdigest()

class CaptchaSpider(scrapy.Spider):
    name="sbdama_captchas"
    allowed_domains=['dama2.com']
    base_url="http://www.dama2.com"
    def update_cookies(self):
        cookies=[]
        cookie_path='cookies.txt'
        if os.path.exists(cookie_path):
            mtime=os.path.getmtime(cookie_path)
            if mtime+60*60*24 >time.time():
                fb=open(cookie_path,"rb")
                cookies=pickle.load(fb)
                if cookies:
                    return cookies
        driver=webdriver.Chrome()
        driver.maximize_window()
        current_url=self.base_url
        driver.get(self.base_url)
        driver.save_screenshot('screenshot.png')
        # set username
        driver.find_element_by_xpath('//div[@id="ulogin-div"]//input[@name="username"]').send_keys("mifengkong")
        driver.find_element_by_xpath('//div[@id="ulogin-div"]//input[@name="userpwd"]').send_keys("mifeng")
        # get captcha image
        imgelement=driver.find_element_by_xpath('//form[@id="uloginForm"]//img')
        location=imgelement.location
        size=imgelement.size
        rangle=(int(location['x']),int(location['y']),int(location['x']+size['width']),int(location['y']+size['height']))
        i=Image.open("screenshot.png")
        frame=i.crop(rangle)
        frame.save('croped.png')
        f=open('croped.png','rb')
        fdata=f.read()
        f.close()
        login_url='http://www.dama2.com/index/uLogin'
        vcode=self.verifyCaptcha(fdata)
        driver.find_element_by_xpath('//div[@id="ulogin-div"]//input[@name="vcode"]').send_keys(vcode)
        driver.find_element_by_xpath('//div[@id="ulogin-div"]//input[@id="userloginbtn"]').click()
        # 获取cookies
        time.sleep(2)
        driver.get('http://www.dama2.com/user/codedetail/p/1')
        time.sleep(2)
        cookies=driver.get_cookies()
        fw=open(cookie_path,"wb")
        pickle.dump(cookies,fw)
        return cookies

    def start_requests(self):
        cookies=self.update_cookies()
        for i in range(420,0,-1):
            yield Request(url="http://www.dama2.com/user/codedetail/p/"+str(i),cookies=cookies)
        '''
        username='mifengkong'
        password="mifeng"
        md5Key=md5str(md5str(username)+md5str(password))
        userpwd=md5str(md5Key+md5str(vcode.upper()))
        logindic={
                "username":username,
                "__hash__":self.__hash__,
                "userpwd":userpwd,
                "vcode":vcode,
                }
        return [FormRequest(url=login_url,formdata=logindic,cookies=self.cookies, callback=self.after_login)]
        '''

    def verifyCaptcha(self,img_data):
        based=base64.b64encode(img_data)
        url='http://api.dama2.com:7766/app/d2File'
        app_key=''
        user=""
        password=""
        appID=''
        sign=(md5(bytes(app_key, encoding = "utf8") + bytes(user, encoding = "utf8") +img_data))[:8]
        pwd=md5str(app_key+md5str(md5str(user)+md5str(password)))
        data={
                'fileDataBase64':based,
                'appID':appID,
                'user':user,
                'pwd':pwd,
                'type':42,
                'sign':sign
                }
        res=requests.post(url,data)
        code=res.json()["result"]
        return code
    def parse(self,response):
        trs=response.xpath('//table[@class="tlist post"]//tbody[last()]//tr')
        for tr in trs:
            app_name=tr.xpath("td[1]/text()").extract()[0]
            state=tr.xpath("td[8]/text()").extract()[0]
            if app_name=="sbdama":
                # 获取正确的
                if state=="答对":
                    code_url=tr.xpath("td[4]//img/@src").extract()[0]
                    vcode=tr.xpath("td[5]/text()").extract()[0]
                    ctime=tr.xpath("td[6]/text()").extract()[0]
                    item=Dama2CrawlsItem()
                    item["image_url"]=code_url
                    item["vcode"]=vcode
                    item["ctime"]=ctime
                    print(ctime+"\t"+vcode+"\t"+code_url)
                    yield item
