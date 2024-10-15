from rest_framework import serializers
from .models import Film, Uzytkownik, Ocena


class FilmSerializer(serializers.ModelSerializer):
    class Meta:
        model = Film
        fields = ['id_filmu', 'tytul', 'gatunek', 'rok_wydania']


class UzytkownikSerializer(serializers.ModelSerializer):
    class Meta:
        model = Uzytkownik
        fields = ['id_uzytkownika', 'nazwa', 'email']


class OcenaSerializer(serializers.ModelSerializer):
    id_uzytkownika = UzytkownikSerializer(read_only=True)  # Nested serializer to show user details
    id_filmu = FilmSerializer(read_only=True)  # Nested serializer to show film details

    class Meta:
        model = Ocena
        fields = ['id_oceny', 'id_uzytkownika', 'id_filmu', 'ocena']
