from django.urls import path
from App.custome_views import common,admin,user,badmin

urlpatterns = [
    path('',common.home),
    path('login',common.login),
    path('register',common.register),
    path('registersave',common.registersave),
    path('logincheck',common.logincheck),
    path('userpage',common.userpage),
    path('adminpage',common.adminpage),
    path('logout',common.logoutpage),
    path('badmin',common.badmin),
    
    #----------------admin-------------------
    path('abadmin',admin.abadmin),
    path('badminadd',admin.badminadd),
    path('badminstatus/<int:id>',admin.badminstatus),
    path('user',admin.user),
    path('file',admin.file),
    
    #----------------backup admin-------------------
    path('bfile',badmin.bfile),
    path('filestatus/<int:id>',badmin.filestatus),
    
    #----------------user-------------------
    path('upload',user.upload),
    path('fileadd',user.fileadd),
    path('fileview/<int:id>',user.fileview),
    path('filerequest/<int:id>',user.filerequest),
    path('updatedate/<int:id>/',user.updatedate),
    path('status',user.status),
    path('filedelete/<int:id>',user.filedelete),
    path('bin',user.bin),
]
