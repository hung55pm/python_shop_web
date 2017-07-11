# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
from django.utils.encoding import python_2_unicode_compatible

@python_2_unicode_compatible
class Category(models.Model):
    id=models.IntegerField(primary_key=True)
    name= models.CharField(max_length=50)
    url=models.CharField(max_length=50, blank=True, null=True)

    def __str__(self):
        return '{}'.format(self.name)

@python_2_unicode_compatible
class PhotoProduct(models.Model):
    id=models.BigAutoField(primary_key=True)
    name=models.CharField(max_length=50)
    picture = models.FileField(upload_to='photo/')
    direct =models.CharField(max_length=100,blank=True, null=True)

    def __str__(self):
        return '{}'.format(self.name)

@python_2_unicode_compatible
class Product(models.Model):
    objectid = models.BigAutoField(primary_key=True)
    title= models.CharField(max_length=50)
    price= models.CharField(max_length=50)
    price_sale=models.CharField(max_length=50)
    status=models.IntegerField(blank=True, null=True)
    catgory=models.ForeignKey(Category,related_name='Wars',db_column='id')
    product_code=models.CharField(max_length=50, blank=True, null=True)
    description=models.CharField(max_length=100, blank=True, null=True)
    photo=models.ForeignKey(PhotoProduct)

    def __str__(self):
        return '{}'.format(self.title)
@python_2_unicode_compatible
class PhotoSlideshow(models.Model):
    objectid = models.BigAutoField(primary_key=True)
    status = models.IntegerField(blank=True, null=True)
    direct = models.CharField(max_length=100,blank=True, null=True)
    picture = models.FileField(upload_to='photo/')
    name = models.CharField(max_length=50)

    def __str__(self):
        return '{}'.format(self.name)

