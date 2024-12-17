from django.shortcuts import render
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth import login as auth_login
from django.http import HttpResponseRedirect
from App.models import *
import datetime

def bfile(request):
    obj=tblfile.objects.filter(request=1)
    return render(request,"badmin/filerequest.html",{'obj':obj})

def filestatus(request,id):
    obj=tblfile.objects.get(id=id)
    x = datetime.datetime.now()
    d=x.day
    m=x.month
    y=x.year
    if m<10:
        m="0"+str(m)
    md="%s-%s-%s"%(y,m,d)
    
    if obj.request==1:
        obj.modify_on=md
        obj.request=0
        obj.status="Activate"
        obj.save()
    else:
        obj.request=1
        obj.status="Deactivate"
        obj.save()
        
    return HttpResponseRedirect('/bfile')