from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('curriculum.urls')),  # Asegurate que esta línea exista
]
