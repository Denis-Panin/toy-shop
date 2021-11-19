from rest_framework import serializers

from shop.models import Product


class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = (
            'id',
                  'name',
                  'slug',
                  'description',
                  'category',
                  'price',
                  'image',
                  'stock',
                  'available',
                  'created',
                  'updated'
                  )
