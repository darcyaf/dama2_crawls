# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html
import scrapy
import pymongo
import hashlib
import os
import time
from scrapy.http import Request
from io import StringIO
from scrapy.pipelines.files import FilesPipeline
from scrapy.exceptions import DropItem
from scrapy.utils.python import to_bytes


class Dama2CrawlsPipeline(object):
    def process_item(self, item, spider):
        return item

class MongoPipeline(object):
    collection_name='captchas'
    def __init__(self, mongo_uri, mongo_db):
        self.mongo_uri = mongo_uri
        self.mongo_db = mongo_db

    @classmethod
    def from_crawler(cls, crawler):
        return cls(
            mongo_uri=crawler.settings.get('MONGO_URI'),
            mongo_db=crawler.settings.get('MONGO_DATABASE', 'dama2')
        )
    def open_spider(self, spider):
        self.client = pymongo.MongoClient(self.mongo_uri)
        self.db = self.client[self.mongo_db]

    def close_spider(self, spider):
        self.client.close()

    def process_item(self, item, spider):
        self.db[self.collection_name].insert(dict(item))
        return item

class MyImagesPipeline(FilesPipeline):

    def get_media_requests(self, item, info):
        image_url=item["image_url"]
        yield scrapy.Request(image_url)
    def item_completed(self, results, item, info):
        image_path=results[0][1]["path"]
        if not image_path:
            raise DropItem("Item contains no images")
        item['image_path'] = image_path
        return item
    def file_path(self, request, response=None, info=None):
        ## start of deprecation warning block (can be removed in the future)
        # check if called from file_key with url as first argument
        if not isinstance(request, Request):
            url = request
        else:
            url = request.url

        # detect if file_key() method has been overridden
        if not hasattr(self.file_key, '_base'):
            return self.file_key(url)
        ## end of deprecation warning block

        # media_guid = hashlib.sha1(to_bytes(url)).hexdigest()  # change to request.url after deprecation
        # media_ext = os.path.splitext(url)[1]  # change to request.url after deprecation
        media_subdir=url.split("/")[-2][:-2]
        media_name=url.split("/")[-1][:-4]
        media_ext=".gif"
        return '%s/%s%s' % (media_subdir,media_name, media_ext)

