from django.shortcuts import render

def index(request):
    print("Cargando vista index")
    return render(request, 'curriculum/index.html')


def cv(request):
    return render(request, 'curriculum/cv.html')