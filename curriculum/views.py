from django.shortcuts import render

def index(request):
    print("Cargando vista index")
    return render(request, 'curriculum/index.html')
