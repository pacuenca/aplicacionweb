# -*- encoding: utf-8 -*-
#from django.shortcuts import render
from django.shortcuts import render, render_to_response, RequestContext
# Create your views here.
from django.http import HttpResponse
from django.http import Http404
from django.views.decorators.csrf import csrf_exempt
from django.core import serializers
from django.http import JsonResponse
from django.template import RequestContext
from ingWebApp.models import *
from django.http import JsonResponse, HttpResponse
from django.core import serializers


def index_view(request):
    pe="hola"

    diccionario = {'saludo': pe}
    return render(request, 'index.html', diccionario,
                  context_instance=RequestContext(request))
                

def goTemplate2(request):
    pe="hola"

    diccionario = {'saludo': pe}
    return render(request, 'infografia/plantilla2.html', diccionario,
                  context_instance=RequestContext(request))

def irLogin(request):
    pe="hola"

    diccionario = {'saludo': pe}
    return render(request, 'login.html', diccionario,
                  context_instance=RequestContext(request))