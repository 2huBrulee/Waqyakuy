from rest_framework.serializers import ModelSerializer
from app.models import Animal, AnimalArea, Area, AreaRegion, Carriers, Characteristic, Diet, Donation, Habitat, Images, News, Region, Report, Starring, Taxonomy, Threat, User, VirusBacteria, Visit


class AnimalSerializer(ModelSerializer):

    class Meta:
        model = Animal
        fields = '__all__'


class AnimalAreaSerializer(ModelSerializer):

    class Meta:
        model = AnimalArea
        fields = '__all__'


class AreaSerializer(ModelSerializer):

    class Meta:
        model = Area
        fields = '__all__'


class AreaRegionSerializer(ModelSerializer):

    class Meta:
        model = AreaRegion
        fields = '__all__'


class CarriersSerializer(ModelSerializer):

    class Meta:
        model = Carriers
        fields = '__all__'


class CharacteristicSerializer(ModelSerializer):

    class Meta:
        model = Characteristic
        fields = '__all__'


class DietSerializer(ModelSerializer):

    class Meta:
        model = Diet
        fields = '__all__'


class DonationSerializer(ModelSerializer):

    class Meta:
        model = Donation
        fields = '__all__'


class HabitatSerializer(ModelSerializer):

    class Meta:
        model = Habitat
        fields = '__all__'


class ImagesSerializer(ModelSerializer):

    class Meta:
        model = Images
        fields = '__all__'


class NewsSerializer(ModelSerializer):

    class Meta:
        model = News
        fields = '__all__'


class RegionSerializer(ModelSerializer):

    class Meta:
        model = Region
        fields = '__all__'


class ReportSerializer(ModelSerializer):

    class Meta:
        model = Report
        fields = '__all__'


class StarringSerializer(ModelSerializer):

    class Meta:
        model = Starring
        fields = '__all__'


class TaxonomySerializer(ModelSerializer):

    class Meta:
        model = Taxonomy
        fields = '__all__'


class ThreatSerializer(ModelSerializer):

    class Meta:
        model = Threat
        fields = '__all__'


class UserSerializer(ModelSerializer):

    class Meta:
        model = User
        fields = '__all__'


class VirusBacteriaSerializer(ModelSerializer):

    class Meta:
        model = VirusBacteria
        fields = '__all__'


class VisitSerializer(ModelSerializer):

    class Meta:
        model = Visit
        fields = '__all__'
