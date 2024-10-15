from django.urls import path
from .views import create_user,get_users
from .views import FilmListCreateView, FilmDetailView

urlpatterns = [
    path('films/', FilmListCreateView.as_view(), name='film-list'),
    path('films/<int:pk>/', FilmDetailView.as_view(), name='film-detail'),
    path('users/create/', create_user, name='create_user'),
    path('users/', get_users, name='get_users')
]