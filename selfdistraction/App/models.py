from django.db import models

# Create your models here.
class tblbadmin(models.Model):
    name=models.CharField( max_length=50)
    username=models.CharField(max_length=50)
    password=models.CharField(max_length=50)
    status=models.CharField(max_length=50,default="Deactive")
    
class tbluser(models.Model):
    username=models.CharField(max_length=50)
    mobile=models.CharField( max_length=10)
    email=models.CharField( max_length=50)
    password=models.CharField(max_length=50)
    on_delete=models.BooleanField(default=0)
    
class tblfile(models.Model):
    user=models.ForeignKey(tbluser, on_delete=models.CASCADE,related_name="for_file_user")
    file=models.FileField(upload_to="file", max_length=100)
    filename=models.CharField(max_length=50)
    create_on=models.DateField(auto_now=False, auto_now_add=True)
    modify_on=models.DateField(auto_now=False, auto_now_add=False)
    expriey_on=models.DateField(auto_now=False, auto_now_add=False)
    status=models.CharField(max_length=50,default="Active")
    request=models.BooleanField(default=0)
    delete_on=models.BooleanField(default=0)
    