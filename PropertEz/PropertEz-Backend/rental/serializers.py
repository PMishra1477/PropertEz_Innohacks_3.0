
from rest_framework import serializers
# from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from .models import User,PgDetails,RoomDetails,Dropdown,RegisterPg



class UserRegistrationSerializer(serializers.ModelSerializer):

    def validate_contact(self, value):

        if not value:
            raise serializers.ValidationError("Contact field cannot be empty")

        if not value.isdigit():
            raise serializers.ValidationError("Contact field must contain only digits")

        if len(value) != 10:
            raise serializers.ValidationError("Contact field must be exactly 10 digits long")

        return value

    class Meta:
        model = User
        fields = ('id','password','contact','first_name','last_name','gender')
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = User.objects.create_user(
            contact=validated_data['contact'],
            password=validated_data['password'],
            first_name=validated_data['first_name'],
            last_name = validated_data['last_name'],
            gender = validated_data['gender']
        )
        return user




class RegisterPgSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = RegisterPg
        exclude=['deleted_status','deleted_time','created_time']

    def validate_contact2(self, value):

        if not value:
            raise serializers.ValidationError("Contact field cannot be empty")

        if not value.isdigit():
            raise serializers.ValidationError("Contact field must contain only digits")

        if len(value) != 10:
            raise serializers.ValidationError("Contact field must be exactly 10 digits long")

        return value
    







class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'contact', 'gender')

class PropertyTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Dropdown 
        fields = ('name', 'order_by')

class ListPgSerializer(serializers.ModelSerializer):

    user = UserSerializer() 
    property_type = PropertyTypeSerializer()
    
    class Meta:
        model = PgDetails
        exclude=['deleted_status','deleted_time','created_time']
        depth = 1

class PgRegistrationSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = PgDetails
        exclude=['deleted_status','deleted_time','created_time']

    def validate_contact2(self, value):

        if not value:
            raise serializers.ValidationError("Contact field cannot be empty")

        if not value.isdigit():
            raise serializers.ValidationError("Contact field must contain only digits")

        if len(value) != 10:
            raise serializers.ValidationError("Contact field must be exactly 10 digits long")

        return value


class RoomRegistartionSerializer(serializers.ModelSerializer):
    class Meta:
        model = RoomDetails
        exclude=['deleted_status','deleted_time','created_time']

class DropdownSerializer(serializers.ModelSerializer):
    class Meta:
        model = Dropdown
        exclude=['deleted_status','deleted_time','created_time']


class OwnerRegistrationSerializer(serializers.ModelSerializer):

    def validate_contact(self, value):

        if not value:
            raise serializers.ValidationError("Contact field cannot be empty")

        if not value.isdigit():
            raise serializers.ValidationError("Contact field must contain only digits")

        if len(value) != 10:
            raise serializers.ValidationError("Contact field must be exactly 10 digits long")

        return value

    class Meta:
        model = User
        fields = ('id','password','contact','first_name','last_name','gender','is_staff')
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = User.objects.create_user(
            contact=validated_data['contact'],
            password=validated_data['password'],
            first_name=validated_data['first_name'],
            last_name = validated_data['last_name'],
            gender = validated_data['gender'],
            is_staff = True
        )
        return user


class UserProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model=User
        fields = ('first_name','last_name','gender','is_superuser','is_staff')







# class JWTAuthentication(TokenObtainPairSerializer):

#     def validate(self, attrs):
#         credentials = {
#             'username': '',
#             'password': attrs.get("password")
#         }
#         user_obj = User.objects.filter(email__exact=attrs.get("username"))
#         if user_obj:
#             credentials['username'] = user_obj[0].username

#         return super().validate(credentials)