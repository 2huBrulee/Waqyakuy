from rest_framework.routers import SimpleRouter
from app import views


router = SimpleRouter()

router.register(r'animal', views.AnimalViewSet, 'Animal')
router.register(r'animalarea', views.AnimalAreaViewSet, 'AnimalArea')
router.register(r'area', views.AreaViewSet, 'Area')
router.register(r'arearegion', views.AreaRegionViewSet, 'AreaRegion')
router.register(r'carriers', views.CarriersViewSet, 'Carriers')
router.register(r'characteristic', views.CharacteristicViewSet, 'Characteristic')
router.register(r'diet', views.DietViewSet, 'Diet')
router.register(r'donation', views.DonationViewSet, 'Donation')
router.register(r'habitat', views.HabitatViewSet, 'Habitat')
router.register(r'images', views.ImagesViewSet, 'Images')
router.register(r'news', views.NewsViewSet, 'News')
router.register(r'region', views.RegionViewSet, 'Region')
router.register(r'report', views.ReportViewSet, 'Report')
router.register(r'starring', views.StarringViewSet, 'Starring')
router.register(r'taxonomy', views.TaxonomyViewSet, 'Taxonomy')
router.register(r'threat', views.ThreatViewSet, 'Threat')
router.register(r'user', views.UserViewSet, 'User')
router.register(r'virusbacteria', views.VirusBacteriaViewSet, 'VirusBacteria')
router.register(r'visit', views.VisitViewSet, 'Visit')

urlpatterns = router.urls
