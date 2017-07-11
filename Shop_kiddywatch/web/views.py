# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from .models import *

# Create your views here.
from django.shortcuts import render
from django.views.generic import TemplateView


class HomeView(TemplateView):
    template_name = 'home.html'

    def get(self, request, *args, **kwargs):

        cat1 = Category.objects.get(id=1)
        cat2 = Category.objects.get(id=2)
        product1 = Product.objects.filter(catgory=cat1)
        product2 = Product.objects.filter(catgory=cat2)
        slide=PhotoSlideshow.objects.filter(status=1)
        for x in product1:
            print x.photo.direct
        return render(request, self.template_name, context={'product': product1, "access": product2,'slide':slide})


class ProductView(TemplateView):
    template_name = 'product_watch.html'

    def get(self, request, id):
        print id
        product = Product.objects.get(objectid=id)
        return render(request, self.template_name, context={'product': product})


class ProductCategory(TemplateView):
    template_name = 'product_category.html'

    def get(self, request):
        cat1 = Category.objects.get(id=1)
        product1 = Product.objects.filter(catgory=cat1)
        return render(request, self.template_name,context={'product': product1})


class ProductSimcard(TemplateView):
    template_name = "product_simcard.html"

    def get(self, request):
        product = Product.objects.get(objectid=id)
        return render(request, self.template_name,context={'product': product})


class ProductStrapsandCharge(TemplateView):
    template_name = "product_strapsandcharge.html"

    def get(self, request):
        return render(request, self.template_name)


