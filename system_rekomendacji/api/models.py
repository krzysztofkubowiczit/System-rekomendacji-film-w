from django.db import models

class Film(models.Model):
    id_filmu = models.AutoField(primary_key=True)
    tytul = models.CharField(max_length=255)
    gatunek = models.CharField(max_length=100, null=True)
    rok_wydania = models.IntegerField(null=True)

    def __str__(self):
        return self.tytul

class Uzytkownik(models.Model):
    id_uzytkownika = models.AutoField(primary_key=True)
    nazwa = models.CharField(max_length=100)
    email = models.EmailField(unique=True)

    def __str__(self):
        return self.nazwa

class Ocena(models.Model):
    id_oceny = models.AutoField(primary_key=True)
    id_uzytkownika = models.ForeignKey(Uzytkownik, on_delete=models.CASCADE)
    id_filmu = models.ForeignKey(Film, on_delete=models.CASCADE)
    ocena = models.DecimalField(max_digits=2, decimal_places=1, null=True)

    def __str__(self):
        return f'{self.id_uzytkownika} rated {self.id_filmu} with {self.ocena}'
