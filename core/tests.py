from django.test import TestCase
from django.contrib.gis.geos import Point
from .models import Location

class LocationModelTest(TestCase):
    def test_create_location(self):
        location = Location.objects.create(
            name="Test Location",
            point=Point(-73.9857, 40.7484)  # Example coordinates
        )

        self.assertEqual(location.name, "Test Location")
        self.assertEqual(location.point.x, -73.9857)
        self.assertEqual(location.point.y, 40.7484)
