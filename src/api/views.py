from rest_framework import viewsets
from api.serializer import ProductSerializer
from shop.models import Product
from rest_framework.response import Response


class ProductAPIViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all().order_by('-id')
    serializer_class = ProductSerializer
