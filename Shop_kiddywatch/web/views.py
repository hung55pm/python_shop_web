# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from .models import *

# Create your views here.
from django.shortcuts import render
from django.views.generic import TemplateView


class HomeView(TemplateView):
  template_name = 'home.html'
  def get(self, request, *args, **kwargs):
      product= Product.objects.all()
      query=product
      for x in product:
          print x.photo.direct

      return render(request, self.template_name,context={'product': product})


class ProductView(TemplateView):
  template_name = 'product_watch.html'
  def get(self, request, id):
      print id
      product = Product.objects.get(objectid=id)
      return render(request, self.template_name,context={'product': product})
