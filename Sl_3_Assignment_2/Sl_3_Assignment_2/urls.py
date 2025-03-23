# StudentProject/urls.py
from django.contrib import admin
from django.urls import path
from app1 import views as app1_views
from app2 import views as app2_views  # Import views from app2

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', app1_views.homepage, name='homepage'),
    path('app2/', app2_views.sample_page, name='sample_page'),  # URL for app2
]
