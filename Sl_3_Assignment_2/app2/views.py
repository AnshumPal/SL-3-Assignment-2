# app2/views.py
from django.http import HttpResponse

def sample_page(request):
    return HttpResponse("<h1>This is a sample page from App 2!</h1>")
