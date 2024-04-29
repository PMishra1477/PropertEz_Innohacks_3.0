from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework import generics
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.authentication import SessionAuthentication
from rental.authentication import CsrfExemptSessionAuthentication
from rest_framework.permissions import IsAuthenticated
from django.contrib.auth import authenticate, login, logout
from .models import User,Dropdown,RoomDetails,PgDetails,RegisterPg
from .serializers import (UserRegistrationSerializer,PgRegistrationSerializer,OwnerRegistrationSerializer,
                          DropdownSerializer,RoomRegistartionSerializer,UserProfileSerializer,ListPgSerializer,RegisterPgSerializer)

class UserRegistrationAPIView(APIView):
    def post(self, request):
        serializer = UserRegistrationSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response({'message': 'User Registered Succesfully'}, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)



class UserLoginAPIView(APIView):
    authentication_classes = [CsrfExemptSessionAuthentication]
    def post(self, request):
        contact = request.data.get('contact')
        password = request.data.get('password')

        if not contact or not password:
            return Response({'error': 'Both contact and password are required'}, status=status.HTTP_400_BAD_REQUEST)

        user = authenticate(request, contact=contact, password=password)

        if user is not None:
            login(request, user)
            return Response({'message': 'Login successful'}, status=status.HTTP_200_OK)
        else:
            return Response({'error': 'Invalid credentials'}, status=status.HTTP_401_UNAUTHORIZED)



class UserLogoutAPIView(APIView):
    def get(self, request):
        if request.user.is_authenticated:
            logout(request)
            return Response({'message': 'Logged out successfully'}, status=status.HTTP_200_OK)
        else:
            return Response({'error': 'Not logged in'}, status=status.HTTP_401_UNAUTHORIZED)
        

class RegisterPgAPIView(generics.ListCreateAPIView):
    authentication_classes = [CsrfExemptSessionAuthentication]
    serializer_class = RegisterPgSerializer

    def perform_create(self, serializer):
        serializer.save()
        return Response({"success":"Pg details saved succesfully"},status=status.HTTP_201_CREATED)

    def get_queryset(self):
        return RegisterPg.objects.filter(deleted_status=False)





















class UserProfileAPIView(generics.ListAPIView):
    serializer_class=UserProfileSerializer
    permission_classes=[IsAuthenticated]
    def get_queryset(self):
        return User.objects.filter(pk=self.request.user.id).values()


class PgRegisterAPIView(APIView):
    authentication_classes = [CsrfExemptSessionAuthentication,SessionAuthentication]
    permission_classes=[IsAuthenticated]

    def post(self, request):
        serializer = OwnerRegistrationSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        
        user = serializer.data['id']
        data = {
            'user':user,
            'contact2':request.data['contact2'],
            'pg_name':request.data['pg_name'],
            'property_type':request.data['property_type'],
            'avl_for':request.data['avl_for'],
            'address':request.data['address'],
            'distance':request.data['distance'],
            'image':request.FILES.get('image')
        }
        
        pg_serializer = PgRegistrationSerializer(data = data)

        if pg_serializer.is_valid():
            pg_serializer.save()
            return Response({'message': 'Pg Registered Succesfully'}, status=status.HTTP_201_CREATED)
        else:
            User.objects.filter(id=user).delete()
            return Response(pg_serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        

class ListPgDetails(generics.ListAPIView):

    serializer_class = ListPgSerializer

    def get_queryset(self):
        return PgDetails.objects.filter(deleted_status=False)
    


class PgDetailsUpdate(APIView):
    authentication_classes = [CsrfExemptSessionAuthentication]
    # permission_classes=[IsAuthenticated]
    
    def patch(self, request, pk):
        try:
            pg_details = PgDetails.objects.get(pk=pk)
        except PgDetails.DoesNotExist:
            return Response({'error': 'PgDetails not found'}, status=status.HTTP_404_NOT_FOUND)

        serializer = PgRegistrationSerializer(pg_details, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    

    def delete(self, request, pk):
        try:
            pg_details = PgDetails.objects.get(pk=pk)
            print(pg_details.user)

        except PgDetails.DoesNotExist:
            return Response({'error': 'PgDetails not found'}, status=status.HTTP_404_NOT_FOUND)

        # pg_details.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)


        

class RoomAPIView(generics.ListCreateAPIView):
    serializer_class = RoomRegistartionSerializer

    def perform_create(self, serializer):
        serializer.save()
        return Response({"success":"Room details saved succesfully"},status=status.HTTP_201_CREATED)

    def get_queryset(self):
        return RoomDetails.objects.filter(deleted_status=False)
    


class DropdownAPIView(generics.ListCreateAPIView):
    serializer_class = DropdownSerializer


    def get_queryset(self):
        return Dropdown.objects.filter(deleted_status=False)
    


    





# class Logout(APIView):

#     def post(self, request):
#         Refresh_token = request.data["refresh"]
#         token = RefreshToken(Refresh_token)
#         token.blacklist()
#         return Response({"message": "Successful Logout"}, status=status.HTTP_200_OK)