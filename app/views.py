from django.shortcuts import render
from django.http import JsonResponse

# Create your views here.


def index(self):
    return JsonResponse(data={"message": "You did it as said."})
