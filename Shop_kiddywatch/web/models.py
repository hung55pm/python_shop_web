# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
from django.utils.encoding import python_2_unicode_compatible


@python_2_unicode_compatible
class Category(models.Model):
    idcate = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=50)
    status = models.IntegerField(blank=True, null=True)
    url = models.CharField(max_length=50, blank=True, null=True)
    description = models.CharField(max_length=50, blank=True, null=True)

    def __str__(self):
        return '{}'.format(self.name)


@python_2_unicode_compatible
class Product(models.Model):
    idproduct = models.BigAutoField(primary_key=True)
    title = models.CharField(max_length=50)
    price = models.CharField(max_length=50)
    price_sale = models.CharField(max_length=50, blank=True, null=True)
    idcategory = models.ForeignKey(Category, related_name='cate', db_column='idcate')
    status = models.IntegerField(blank=True, null=True)
    product_code = models.CharField(max_length=50, blank=True, null=True)
    description = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return '{}'.format(self.title)


@python_2_unicode_compatible
class SizePhoto(models.Model):
    idsize = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=50)
    value = models.IntegerField(blank=True, null=True)

    def __str__(self):
        return '{}'.format(self.name)


@python_2_unicode_compatible
class PhotoProduct(models.Model):
    id = models.BigAutoField(primary_key=True)
    idproduct = models.ForeignKey(Product, related_name='pro', db_column='idproduct')
    name = models.CharField(max_length=50)
    picture = models.ImageField()
    sizephoto = models.ForeignKey(SizePhoto, related_name='sizepro', db_column='idsize')
    status = models.IntegerField(blank=True, null=True)
    description = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return '{}'.format(self.name)


class Slideshow(models.Model):
    idslide = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=50)
    status = models.IntegerField(blank=True, null=True)
    location = models.CharField(max_length=50, blank=True, null=True)
    description = models.CharField(max_length=100, blank=True, null=True)


@python_2_unicode_compatible
class PhotoSlideshow(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=50)
    idslideshow = models.ForeignKey(Slideshow, related_name='slide', db_column='idslide')
    picture = models.ImageField()
    sizephoto = models.ForeignKey(SizePhoto, related_name='sizeslide', db_column='idsize')
    status = models.IntegerField(blank=True, null=True)
    description = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return '{}'.format(self.name)
