# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models


class Animal(models.Model):
    animal_id = models.AutoField(primary_key=True)
    animal_name = models.CharField(max_length=40)
    conservation_status = models.CharField(max_length=20)
    img_td = models.CharField(max_length=68)
    cry = models.CharField(max_length=68, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    size = models.FloatField(blank=True, null=True)
    weight = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'animal'


class AnimalArea(models.Model):
    animal = models.ForeignKey(Animal, models.DO_NOTHING)
    area = models.ForeignKey('Area', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'animal_area'


class Area(models.Model):
    area_id = models.AutoField(primary_key=True)
    area_name = models.CharField(max_length=30)
    photo = models.CharField(max_length=68, blank=True, null=True)
    creation_date = models.DateTimeField()
    size = models.FloatField(blank=True, null=True)
    type = models.CharField(max_length=30, blank=True, null=True)
    weather = models.CharField(max_length=40, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'area'


class AreaRegion(models.Model):
    area = models.ForeignKey(Area, models.DO_NOTHING)
    region = models.ForeignKey('Region', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'area_region'


class Carriers(models.Model):
    vb = models.ForeignKey('VirusBacteria', models.DO_NOTHING)
    animal = models.ForeignKey(Animal, models.DO_NOTHING)
    description = models.TextField(blank=True, null=True)
    transmission = models.CharField(max_length=40, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'carriers'


class Characteristic(models.Model):
    char_id = models.AutoField(primary_key=True)
    animal = models.ForeignKey(Animal, models.DO_NOTHING)
    description = models.TextField(blank=True, null=True)
    type = models.CharField(max_length=30, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'characteristic'


class Diet(models.Model):
    diet_id = models.AutoField(primary_key=True)
    animal = models.ForeignKey(Animal, models.DO_NOTHING)
    food_name = models.CharField(max_length=30)
    description = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'diet'


class Donation(models.Model):
    donation_id = models.AutoField(primary_key=True)
    donation_amount = models.FloatField()
    date = models.DateTimeField()
    visit = models.ForeignKey('Visit', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'donation'


class Habitat(models.Model):
    habitat_id = models.AutoField(primary_key=True)
    animal = models.ForeignKey(Animal, models.DO_NOTHING)
    description = models.TextField()
    svg = models.CharField(max_length=68, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'habitat'


class Images(models.Model):
    img_id = models.AutoField(primary_key=True)
    animal = models.ForeignKey(Animal, models.DO_NOTHING)
    img_link = models.CharField(max_length=68)

    class Meta:
        managed = False
        db_table = 'images'


class News(models.Model):
    news_id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=30, blank=True, null=True)
    content = models.TextField(blank=True, null=True)
    creation_date = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'news'


class Region(models.Model):
    region_id = models.AutoField(primary_key=True)
    region_name = models.CharField(max_length=30)
    ubigeo = models.CharField(max_length=6, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'region'


class Report(models.Model):
    report_id = models.AutoField(primary_key=True)
    animal = models.ForeignKey(Animal, models.DO_NOTHING)
    description = models.TextField(blank=True, null=True)
    creation_date = models.DateTimeField()
    place = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'report'


class Starring(models.Model):
    news = models.ForeignKey(News, models.DO_NOTHING)
    animal = models.ForeignKey(Animal, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'starring'


class Taxonomy(models.Model):
    taxon_id = models.AutoField(primary_key=True)
    scientific_name = models.CharField(max_length=50)
    subspecies = models.CharField(max_length=50, blank=True, null=True)
    kingdom = models.CharField(max_length=30, blank=True, null=True)
    phylum = models.CharField(max_length=30, blank=True, null=True)
    class_field = models.CharField(db_column='class', max_length=30, blank=True, null=True)  # Field renamed because it was a Python reserved word.
    order_t = models.CharField(max_length=30, blank=True, null=True)
    family = models.CharField(max_length=30, blank=True, null=True)
    genus = models.CharField(max_length=30, blank=True, null=True)
    species = models.CharField(max_length=30, blank=True, null=True)
    animal = models.ForeignKey(Animal, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'taxonomy'


class Threat(models.Model):
    threat_id = models.AutoField(primary_key=True)
    animal = models.ForeignKey(Animal, models.DO_NOTHING)
    description = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'threat'


class User(models.Model):
    user_id = models.AutoField(primary_key=True)
    firstname = models.CharField(max_length=40)
    lastname_m = models.CharField(max_length=20)
    lastname_f = models.CharField(max_length=20)
    mail = models.CharField(max_length=40)
    age = models.IntegerField()
    city = models.CharField(max_length=20)
    pass_field = models.CharField(db_column='pass', max_length=64)  # Field renamed because it was a Python reserved word.
    phone = models.CharField(max_length=12)
    creation_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'user'


class VirusBacteria(models.Model):
    vb_id = models.AutoField(primary_key=True)
    vb_name = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'virus_bacteria'


class Visit(models.Model):
    animal = models.ForeignKey(Animal, models.DO_NOTHING)
    user = models.ForeignKey(User, models.DO_NOTHING)
    likes = models.IntegerField(blank=True, null=True)
    favorites = models.IntegerField(blank=True, null=True)
    visit_id = models.AutoField(primary_key=True)

    class Meta:
        managed = False
        db_table = 'visit'
