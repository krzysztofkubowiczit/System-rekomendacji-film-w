from rest_framework import generics
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from .models import Film, Uzytkownik, Ocena
from .serializers import FilmSerializer, UzytkownikSerializer, OcenaSerializer

# List all films or create a new one
class FilmListCreateView(generics.ListCreateAPIView):
    queryset = Film.objects.all()
    serializer_class = FilmSerializer

# Retrieve, update or delete a single film
class FilmDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Film.objects.all()
    serializer_class = FilmSerializer

@api_view(['POST'])
def create_user(request):
    serializer = UzytkownikSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    else:
        return Response(serializer.data,status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def get_users(request):
    users = Uzytkownik.objects.all()
    serializer = UzytkownikSerializer(users, many = True)
    return Response(serializer.data)
