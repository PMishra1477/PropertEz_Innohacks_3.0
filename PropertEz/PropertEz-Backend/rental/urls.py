from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from .views import (UserRegistrationAPIView,UserLoginAPIView,UserLogoutAPIView,
                    PgRegisterAPIView,DropdownAPIView,RoomAPIView,UserProfileAPIView,
                    ListPgDetails,PgDetailsUpdate,RegisterPgAPIView)

urlpatterns = [

   path('user-register/', UserRegistrationAPIView.as_view(), name='register-user'),
   path('login/', UserLoginAPIView.as_view(), name='login'),
   path('logout/', UserLogoutAPIView.as_view(), name='logout'),
   path('pg-details/', RegisterPgAPIView.as_view(), name='pg-details'),

   # path('user-profile/', UserProfileAPIView.as_view(), name='user-profile'),
   # path('register-pg/', PgRegisterAPIView.as_view(), name='pg-register'),
   # path('pg-details/', ListPgDetails.as_view(), name='pg-details'),
   # path('pg-details/update/<int:pk>/', PgDetailsUpdate.as_view(), name='pg-details-update'),
   # path('pg-details/<int:pk>/', PgDetailsDelete.as_view(), name='pg_details_delete'),
   # path('room-details/', RoomAPIView.as_view(), name='room-details'),
   # path('add-dropdown/', DropdownAPIView.as_view(), name='add -dropdown'),
   
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)