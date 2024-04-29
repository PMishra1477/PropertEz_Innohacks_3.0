
from django.contrib.auth.models import AbstractUser, BaseUserManager
from django.db import models

class CustomUserManager(BaseUserManager):
    """
    Custom user model manager where email is the unique identifiers
    for authentication instead of usernames.
    """
    def create_user(self, contact, password=None, **extra_fields):
        """
        Create and return a regular user with an email, username, and password.
        """
        if not contact:
            raise ValueError('The Contact must be set')
        contact = self.normalize_email(contact)
        user = self.model(contact=contact, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, contact, password=None, **extra_fields):
        """
        Create and return a superuser with the given email, username, and password.
        """
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)

        if extra_fields.get('is_staff') is not True:
            raise ValueError('Superuser must have is_staff=True.')
        if extra_fields.get('is_superuser') is not True:
            raise ValueError('Superuser must have is_superuser=True.')

        return self.create_user(contact, password, **extra_fields)

class User(AbstractUser):
    """
    Custom user model with contact as the username field.
    """
    username = None
    email = None
    contact = models.CharField('contact', max_length=10, unique=True)
    gender = models.CharField('gender', max_length=10, null=True)

    USERNAME_FIELD = 'contact'
    REQUIRED_FIELDS = ['email']

    objects = CustomUserManager()

    def __str__(self):
        return self.pk


    
class BaseModel(models.Model):
    created_time=models.DateTimeField(auto_now_add=True)
    deleted_time = models.DateTimeField(null=True)
    deleted_status=models.BooleanField(default=False)
    class Meta:
        abstract = True

class Dropdown(BaseModel):
    name = models.CharField(max_length=50)
    relation = models.ForeignKey("Dropdown", on_delete=models.SET_NULL, null=True)
    order_by=models.PositiveIntegerField(default=0)

class PgDetails(BaseModel):
    user=models.ForeignKey(User,on_delete=models.SET_NULL,null=True,related_name='user_idty')
    contact2=models.CharField(max_length=10,default="Null")
    pg_name = models.CharField(max_length=50)
    property_type = models.ForeignKey(Dropdown,on_delete=models.SET_NULL,null=True,related_name='propty_typ')
    avl_for = models.CharField(max_length=20)
    address = models.CharField(max_length=150)
    distance = models.CharField(max_length=20)
    image = models.ImageField(upload_to='cover_images')


class RoomDetails(BaseModel):
    pg = models.ForeignKey(PgDetails,on_delete=models.SET_NULL,null=True,related_name='pg_detail')
    seat_capacity = models.ForeignKey(Dropdown,on_delete=models.SET_NULL,null=True,related_name='seat_cap')
    room_count = models.PositiveIntegerField()
    charges = models.PositiveIntegerField()
    ac = models.BooleanField(default=False)
    inverter = models.BooleanField(default=False)
    washing_machine = models.BooleanField(default=False)
    matress = models.BooleanField(default=False)
    wifi = models.BooleanField(default=False)
    cooler = models.BooleanField(default=False)
    furnished = models.BooleanField(default=False)
    kitchen = models.BooleanField(default=False)
    description = models.TextField(max_length=500)


class RegisterPg(BaseModel):
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    contact = models.PositiveIntegerField()
    owner_address = models.CharField(max_length=150)
    city = models.CharField(max_length=50)
    pin = models.PositiveIntegerField()
    property_type = models.CharField(max_length=100)
    pg_name = models.CharField(max_length=50)
    property_address = models.CharField(max_length=150)
    distance = models.CharField(max_length=20)
    charges = models.PositiveIntegerField()
    seat_capacity = models.CharField(max_length=100)
    inverter = models.CharField(default="No",max_length=20)
    ac = models.CharField(default="No",max_length=20)
    cooler = models.CharField(default="No",max_length=20)
    matress = models.CharField(default="No",max_length=20)
    wifi = models.CharField(default="No",max_length=20)
    washing_machine = models.CharField(default="No",max_length=20)
    description = models.TextField(max_length=500)