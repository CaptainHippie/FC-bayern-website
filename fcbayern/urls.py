"""fcbayern URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from main import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='home'),
    path('news/<slug:slug>/', views.NEWS, name='newspage'),
    path('match/', views.MATCH_DETAIL, name='match'),
    path('player/<slug:slug_name>/', views.PLAYER_DETAIL, name='player'),
    path('roster/', views.CLUB_ROSTER, name='roster'),
    path('staff/<slug:slug_name>/', views.STAFF, name='staff'),
    path('album/<slug:slug_name>/', views.ALBUM, name='album'),
    path('account/<slug:slug_name>/', views.ACCOUNT, name='account'),
    path('account/<slug:slug_name>/<str:addr_type>/', views.ADDRESS, name='address'),
    path('account/<slug:slug_name>/order/<int:order_id>/', views.ORDER, name='order'),
    path('login/', views.REG_LOGIN, name='login'),
    path('shop/', views.SHOP, name='shop'),
    path('product/<slug:slug_name>/', views.PRODUCT, name='product'),
    path('cart/', views.CART, name='cart'),
    path('checkout/', views.CHECKOUT, name='checkout'),
    path('test/', views.TEST, name='test'),

    #cart
    path('cart/add/<int:id>/', views.cart_add, name='cart_add'),
    path('cart/item_clear/<int:id>/', views.item_clear, name='item_clear'),
    path('cart/item_increment/<int:id>/<int:qty>/', views.item_increment, name='item_increment'),
    path('cart/item_decrement/<int:id>/<int:quantity>/', views.item_decrement, name='item_decrement'),
    path('cart/cart_clear/', views.cart_clear, name='cart_clear')

] + static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT )
