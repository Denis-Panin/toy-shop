from django.urls import path
from rest_framework.routers import DefaultRouter
from api.views import ProductAPIViewSet

router = DefaultRouter()
router.register(prefix='api/v1/product', viewset=ProductAPIViewSet, basename='product')

urlpatterns = router.urls
