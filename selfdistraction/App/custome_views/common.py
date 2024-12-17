from django.shortcuts import render
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth import login as auth_login
from django.http import HttpResponseRedirect
from App.models import *

# Create your views here.
def home(request):
    return render(request,"common/home.html")

def login(request):
    return render(request,"common/login.html")

def logoutpage(request):    
    logout(request)
    return HttpResponseRedirect('login')

def registersave(request):
    if request.method=="POST":
        un=request.POST["username"]
        mob=request.POST["mobile"]
        email=request.POST["email"]
        pw=request.POST["password"]
        obj=tbluser()
        obj.username=un
        obj.mobile=mob
        obj.email=email
        obj.password=pw
        obj.save()
        return HttpResponseRedirect('login')

def register(request):
    return render(request,"common/register.html")

def adminpage(request):
    if request.session.has_key('user'):
        return render(request,"common/admin.html")

def userpage(request):
    if request.session.has_key('user'):
        return render(request,"common/user.html")

def badmin(request):
    if request.session.has_key('user'):
        return render(request,"common/badmin.html")

def logincheck(request):
    if request.method=="POST":
        un=request.POST["username"]
        pw=request.POST["password"]
        print(un,pw)
        user=authenticate(username=un,password=pw)
        if user is not None:
            auth_login(request,user)
            request.session["user"]=un
            messages.success(request,"Welcome Admin")
            return HttpResponseRedirect("adminpage")
        elif tbluser.objects.filter(username=un,password=pw).exists():
            request.session["user"]=un
            messages.success(request,"Welcome %s"%un)
            return HttpResponseRedirect("userpage")
        elif tblbadmin.objects.filter(username=un,password=pw).exists():
            request.session["user"]=un
            messages.success(request,"Welcome %s"%un)
            return HttpResponseRedirect("badmin")
        else:
            messages.error(request,"Please Enter Valied Username and Password")
            return HttpResponseRedirect('login')
    return HttpResponseRedirect('login')