# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.

class Category(models.Model):
    id=models.IntegerField(primary_key=True)
    name= models.CharField(max_length=50)

    def __str__(self):
        return '{}'.format(self.name)
class PhotoProduct(models.Model):
    id=models.BigAutoField(primary_key=True)
    name=models.CharField(max_length=50)
    picture = models.FileField(upload_to='photo/')
    direct =models.CharField(max_length=100)

    def __str__(self):
        return '{}'.format(self.name)
class Product(models.Model):
    objectid = models.BigAutoField(primary_key=True)
    title= models.CharField(max_length=50)
    price= models.CharField(max_length=50)
    price_sale=models.CharField(max_length=50)
    status=models.IntegerField(blank=True, null=True)
    catgory=models.ForeignKey(Category,related_name='Wars',db_column='id')
    product_code=models.CharField(max_length=50)
    description=models.CharField(max_length=100)
    photo=models.ForeignKey(PhotoProduct)

    def __str__(self):
        return '{}'.format(self.title)




