from scrapy.item import Item,Field
class Dama2CrawlsItem(Item):
    image_url=Field()
    vcode=Field()
    ctime=Field()
    image=Field()
    image_path=Field()
