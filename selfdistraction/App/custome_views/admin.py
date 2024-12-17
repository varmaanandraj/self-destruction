from django.shortcuts import render
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth import login as auth_login
from django.http import HttpResponseRedirect
from App.models import *
def abadmin(request):
    if request.session.has_key('user'):
        obj=tblbadmin.objects.all()
        return render(request,"admin/badmin.html",{'obj':obj})

def badminadd(request):
    if request.session.has_key('user'):
        if request.method=="POST":
            name=request.POST['name']
            un=request.POST['un']
            pw=request.POST['pw']
            obj=tblbadmin()
            obj.name=name
            obj.username=un
            obj.password=pw
            obj.save()
    return HttpResponseRedirect('/badmin')

def badminstatus(request,id):
    obj=tblbadmin.objects.get(id=id)
    if obj.status=="Deactive":
        obj.status="Active"
        obj.save()
    else:
        obj.status="Deactive"
        obj.save()
    return HttpResponseRedirect("/badmin")

def user(request):
    if request.session.has_key('user'):
        obj=tbluser.objects.all()
        return render(request,"admin/user.html",{'obj':obj})

def file(request):
    if request.session.has_key('user'):
        obj=tblfile.objects.all()
        return render(request,"admin/file.html",{'obj':obj})