from django.contrib.gis.db import models
from django.contrib.postgres.operations import CreateExtension
from django.db import migrations

class Migration(migrations.Migration):

    operations = [
        CreateExtension('postgis'),
    ]


class Location(models.Model):
     name = models.TextField(null=True)
     point = models.PointField()

