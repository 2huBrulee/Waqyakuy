from django.shortcuts import get_object_or_404
from rest_framework.viewsets import ViewSet
from rest_framework.response import Response
from app.serializers import AnimalSerializer, AnimalAreaSerializer, AreaSerializer, AreaRegionSerializer, CarriersSerializer, CharacteristicSerializer, DietSerializer, DonationSerializer, HabitatSerializer, ImagesSerializer, NewsSerializer, RegionSerializer, ReportSerializer, StarringSerializer, TaxonomySerializer, ThreatSerializer, UserSerializer, VirusBacteriaSerializer, VisitSerializer
from app.models import Animal, AnimalArea, Area, AreaRegion, Carriers, Characteristic, Diet, Donation, Habitat, Images, News, Region, Report, Starring, Taxonomy, Threat, User, VirusBacteria, Visit
from django.shortcuts import render


class AnimalViewSet(ViewSet):

    def list(self, request):
        queryset = Animal.objects.all()
        serializer = AnimalSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = AnimalSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Animal.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = AnimalSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Animal.objects.get(pk=pk)
        except Animal.DoesNotExist:
            return Response(status=404)
        serializer = AnimalSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Animal.objects.get(pk=pk)
        except Animal.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class AnimalAreaViewSet(ViewSet):

    def list(self, request):
        queryset = AnimalArea.objects.all()
        serializer = AnimalAreaSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = AnimalAreaSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = AnimalArea.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = AnimalAreaSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = AnimalArea.objects.get(pk=pk)
        except AnimalArea.DoesNotExist:
            return Response(status=404)
        serializer = AnimalAreaSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = AnimalArea.objects.get(pk=pk)
        except AnimalArea.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class AreaViewSet(ViewSet):

    def list(self, request):
        queryset = Area.objects.all()
        serializer = AreaSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = AreaSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Area.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = AreaSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Area.objects.get(pk=pk)
        except Area.DoesNotExist:
            return Response(status=404)
        serializer = AreaSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Area.objects.get(pk=pk)
        except Area.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class AreaRegionViewSet(ViewSet):

    def list(self, request):
        queryset = AreaRegion.objects.all()
        serializer = AreaRegionSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = AreaRegionSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = AreaRegion.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = AreaRegionSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = AreaRegion.objects.get(pk=pk)
        except AreaRegion.DoesNotExist:
            return Response(status=404)
        serializer = AreaRegionSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = AreaRegion.objects.get(pk=pk)
        except AreaRegion.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class CarriersViewSet(ViewSet):

    def list(self, request):
        queryset = Carriers.objects.all()
        serializer = CarriersSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = CarriersSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Carriers.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = CarriersSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Carriers.objects.get(pk=pk)
        except Carriers.DoesNotExist:
            return Response(status=404)
        serializer = CarriersSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Carriers.objects.get(pk=pk)
        except Carriers.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class CharacteristicViewSet(ViewSet):

    def list(self, request):
        queryset = Characteristic.objects.all()
        serializer = CharacteristicSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = CharacteristicSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Characteristic.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = CharacteristicSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Characteristic.objects.get(pk=pk)
        except Characteristic.DoesNotExist:
            return Response(status=404)
        serializer = CharacteristicSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Characteristic.objects.get(pk=pk)
        except Characteristic.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class DietViewSet(ViewSet):

    def list(self, request):
        queryset = Diet.objects.all()
        serializer = DietSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = DietSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Diet.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = DietSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Diet.objects.get(pk=pk)
        except Diet.DoesNotExist:
            return Response(status=404)
        serializer = DietSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Diet.objects.get(pk=pk)
        except Diet.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class DonationViewSet(ViewSet):

    def list(self, request):
        queryset = Donation.objects.all()
        serializer = DonationSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = DonationSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Donation.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = DonationSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Donation.objects.get(pk=pk)
        except Donation.DoesNotExist:
            return Response(status=404)
        serializer = DonationSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Donation.objects.get(pk=pk)
        except Donation.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class HabitatViewSet(ViewSet):

    def list(self, request):
        queryset = Habitat.objects.all()
        serializer = HabitatSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = HabitatSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Habitat.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = HabitatSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Habitat.objects.get(pk=pk)
        except Habitat.DoesNotExist:
            return Response(status=404)
        serializer = HabitatSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Habitat.objects.get(pk=pk)
        except Habitat.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class ImagesViewSet(ViewSet):

    def list(self, request):
        queryset = Images.objects.all()
        serializer = ImagesSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = ImagesSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Images.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = ImagesSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Images.objects.get(pk=pk)
        except Images.DoesNotExist:
            return Response(status=404)
        serializer = ImagesSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Images.objects.get(pk=pk)
        except Images.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class NewsViewSet(ViewSet):

    def list(self, request):
        queryset = News.objects.all()
        serializer = NewsSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = NewsSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = News.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = NewsSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = News.objects.get(pk=pk)
        except News.DoesNotExist:
            return Response(status=404)
        serializer = NewsSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = News.objects.get(pk=pk)
        except News.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class RegionViewSet(ViewSet):

    def list(self, request):
        queryset = Region.objects.all()
        serializer = RegionSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = RegionSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Region.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = RegionSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Region.objects.get(pk=pk)
        except Region.DoesNotExist:
            return Response(status=404)
        serializer = RegionSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Region.objects.get(pk=pk)
        except Region.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class ReportViewSet(ViewSet):

    def list(self, request):
        queryset = Report.objects.all()
        serializer = ReportSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = ReportSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Report.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = ReportSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Report.objects.get(pk=pk)
        except Report.DoesNotExist:
            return Response(status=404)
        serializer = ReportSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Report.objects.get(pk=pk)
        except Report.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class StarringViewSet(ViewSet):

    def list(self, request):
        queryset = Starring.objects.all()
        serializer = StarringSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = StarringSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Starring.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = StarringSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Starring.objects.get(pk=pk)
        except Starring.DoesNotExist:
            return Response(status=404)
        serializer = StarringSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Starring.objects.get(pk=pk)
        except Starring.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class TaxonomyViewSet(ViewSet):

    def list(self, request):
        queryset = Taxonomy.objects.all()
        serializer = TaxonomySerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = TaxonomySerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Taxonomy.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = TaxonomySerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Taxonomy.objects.get(pk=pk)
        except Taxonomy.DoesNotExist:
            return Response(status=404)
        serializer = TaxonomySerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Taxonomy.objects.get(pk=pk)
        except Taxonomy.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class ThreatViewSet(ViewSet):

    def list(self, request):
        queryset = Threat.objects.all()
        serializer = ThreatSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = ThreatSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Threat.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = ThreatSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Threat.objects.get(pk=pk)
        except Threat.DoesNotExist:
            return Response(status=404)
        serializer = ThreatSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Threat.objects.get(pk=pk)
        except Threat.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class UserViewSet(ViewSet):

    def list(self, request):
        queryset = User.objects.all()
        serializer = UserSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = UserSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = User.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = UserSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = User.objects.get(pk=pk)
        except User.DoesNotExist:
            return Response(status=404)
        serializer = UserSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = User.objects.get(pk=pk)
        except User.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class VirusBacteriaViewSet(ViewSet):

    def list(self, request):
        queryset = VirusBacteria.objects.all()
        serializer = VirusBacteriaSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = VirusBacteriaSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = VirusBacteria.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = VirusBacteriaSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = VirusBacteria.objects.get(pk=pk)
        except VirusBacteria.DoesNotExist:
            return Response(status=404)
        serializer = VirusBacteriaSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = VirusBacteria.objects.get(pk=pk)
        except VirusBacteria.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)


class VisitViewSet(ViewSet):

    def list(self, request):
        queryset = Visit.objects.all()
        serializer = VisitSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = VisitSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def retrieve(self, request, pk=None):
        queryset = Visit.objects.all()
        item = get_object_or_404(queryset, pk=pk)
        serializer = VisitSerializer(item)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            item = Visit.objects.get(pk=pk)
        except Visit.DoesNotExist:
            return Response(status=404)
        serializer = VisitSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def destroy(self, request, pk=None):
        try:
            item = Visit.objects.get(pk=pk)
        except Visit.DoesNotExist:
            return Response(status=404)
        item.delete()
        return Response(status=204)

