from django.shortcuts import render
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth import login as auth_login
from django.http import HttpResponseRedirect,JsonResponse
from App.models import *
import datetime

def upload(request):
    if request.session.has_key('user'):
        un=request.session['user']
        obj=tblfile.objects.filter(user__username=un,delete_on=0)
        for i in obj:
            if i.modify_on <= i.expriey_on:
                i.status="Activate"
                i.save()
            else:
                i.status="Deactivate"
                i.save()
        return render(request,"user/upload.html",{'obj':obj})

def fileadd(request):
    if request.session.has_key('user'):
        if request.session.has_key('user'):
            un=request.session['user']
            x = datetime.datetime.now()
            d=x.day
            m=x.month
            y=x.year
            if m<10:
                m="0"+str(m)
            un=tbluser.objects.get(username=un)
            cd="%s-%s-%s"%(y,m,d)
            md="%s-%s-%s"%(y,m,d)
            ed="%s-%s-%s"%((y+1),m,d)
            
            f=request.FILES['file']
            fn=request.POST['filename']
            
            obj=tblfile()
            
            obj.user=un
            obj.filename=fn
            obj.file=f
            obj.create_on=cd
            obj.modify_on=md
            obj.expriey_on=ed
            obj.save()
            
            return HttpResponseRedirect('upload')

def fileview(request,id):
    if request.session.has_key('user'):
        obj=tblfile.objects.get(id=id)
        return render(request,"user/fileview.html",{'i':obj})

def bin(request):
    if request.session.has_key('user'):
        un=request.session['user']
        obj=tblfile.objects.filter(user__username=un,delete_on=1)
        print(obj)
        return render(request,"user/bin.html",{'obj':obj})

def filedelete(request,id):
    if request.session.has_key('user'):
        obj=tblfile.objects.get(id=id)
        if obj.delete_on == 0:
            obj.delete_on=1
            obj.save()
            messages.info(request,"Deleted")
        else:
            obj.delete_on=0
            obj.save()
            messages.info(request,"Restored")
        return HttpResponseRedirect('/upload')

def filerequest(request,id):
    if request.session.has_key('user'):
        obj=tblfile.objects.get(id=id)
        obj.request=1
        obj.save()
        messages.info(request,"Request Sended")
        return HttpResponseRedirect('/upload')

def status(request):
    if request.session.has_key('user'):
        un=request.session['user']
        un=tbluser.objects.get(username=un)
        obj=tblfile.objects.filter(user=un,request=1)
        return render(request,"user/status.html",{'obj':obj})
    
def is_ajax(request):
    return request.META.get('HTTP_X_REQUESTED_WITH') == 'XMLHttpRequest'

def updatedate(request,id):
    if request.session.has_key('user'):
        obj=tblfile.objects.get(id=id)
        return JsonResponse()

def fileview(request,id):
    if request.session.has_key('user'):
        obj=tblfile.objects.get(id=id)
        
        x = datetime.datetime.now()
        d=x.day
        m=x.month
        y=x.year
        if m<10:
            m="0"+str(m)
        md="%s-%s-%s"%(y,m,d)
        obj.modify_on=md
        ed="%s-%s-%s"%((y+1),m,d)
        obj.expriey_on=ed
        obj.save()
        
        obj=tblfile.objects.get(id=id)
        return render(request,"user/fileview.html",{'i':obj})
        