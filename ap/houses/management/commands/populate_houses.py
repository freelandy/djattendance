from django.core.management.base import BaseCommand
from houses.models import House
from aputils.models import City, Address

houses = [
  {'name': "1009 Cambria", 'gender': "S", 'zipcode': "92801"},
  {'name': "1014 Gilbert", 'gender': "S", 'zipcode': "92801"}, 
  {'name': "1014 Modena", 'gender': "B", 'zipcode': "92801"}, 
  {'name': "1015 Stephenson", 'gender': "S", 'zipcode': "92801"},
  {'name': "1041 Reiser", 'gender': "S", 'zipcode': "92801"},
  {'name': "1045 Stephenson", 'gender': "S", 'zipcode': "92801"}, 
  {'name': "1060 Stephenson", 'gender': "S", 'zipcode': "92801"}, 
  {'name': "1779 Colonial", 'gender': "B", 'zipcode': "92804"}, 
  {'name': "2121 Chalet", 'gender': "B", 'zipcode': "92804"}, 
  {'name': "2102 Grace Ct", 'gender': "B", 'zipcode': "92804"},
  {'name': "2102 Grace Ct. Couple", 'gender': "C", 'zipcode': "92804"},
  {'name': "2103 Grace Ct.", 'gender': "B", 'zipcode': "92804"}, 
  {'name': "2104 Grace Ct.", 'gender': "B", 'zipcode': "92804"},
  {'name': "2105 Grace Ct.", 'gender': "B", 'zipcode': "92804"},
  {'name': "2105 Grace Ct. Couple", 'gender': "C", 'zipcode': "92804"},
  {'name': "2106 Grace Ct.", 'gender': "B", 'zipcode': "92804"}, 
  {'name': "2106 Grace Ct. Couple", 'gender': "C", 'zipcode': "92804"},
  {'name': "2107 Grace Ct.", 'gender': "B", 'zipcode': "92804"},
  {'name': "2108 Grace Ct.", 'gender': "B", 'zipcode': "92804"}, 
  {'name': "2109 Grace Ct.", 'gender': "B", 'zipcode': "92804"},
  {'name': "2111 Grace Ct.", 'gender': "B", 'zipcode': "92804"},
  {'name': "2112 Grace Ct.", 'gender': "S", 'zipcode': "92804"}, 
  {'name': "2113 Grace Ct.", 'gender': "S", 'zipcode': "92804"},
  {'name': "2113 Grace Ct. Couple", 'gender': "C", 'zipcode': "92804"},
  {'name': "2114 Grace Ct.", 'gender': "S", 'zipcode': "92804"},
  {'name': "2115 Grace Ct.", 'gender': "S", 'zipcode': "92804"}, 
  {'name': "2116 Grace Ct.", 'gender': "S", 'zipcode': "92804"},
  {'name': "2116 Grace Ct. Couple", 'gender': "C", 'zipcode': "92804"},
  {'name': "2117 Grace Ct.", 'gender': "S", 'zipcode': "92804"}, 
  {'name': "2117 Grace Ct. Couple", 'gender': "C", 'zipcode': "92804"},
  {'name': "2118 Grace Ct.", 'gender': "S", 'zipcode': "92804"},
  {'name': "2119 Grace Ct. Couple", 'gender': "C", 'zipcode': "92804"},
  {'name': "2120 Grace Ct.", 'gender': "S", 'zipcode': "92804"}, 
  {'name': "2120 Grace Ct. Couple", 'gender': "C", 'zipcode': "92804"},
  {'name': "2121 Grace Ct.", 'gender': "S", 'zipcode': "92804"}, 
  {'name': "2121 Grace Ct. Couple", 'gender': "C", 'zipcode': "92804"}, 
  {'name': "2345 Caramia", 'gender': "S", 'zipcode': "92801"},
  {'name': "2360 Hansen", 'gender': "S", 'zipcode': "92801"}, 
  {'name': "2360 Moro", 'gender': "B", 'zipcode': "92801"},
  {'name': "2371 Caramia", 'gender': "S", 'zipcode': "92801"}, 
  {'name': "2380 Hansen", 'gender': "C", 'zipcode': "92801"},
  {'name': "2464 Rainbow", 'gender': "B", 'zipcode': "92801"}, 
  {'name': "905 Neptune", 'gender': "B", 'zipcode': "92804"}, 
  {'name': "Hall Apt 1-West", 'gender': "C", 'zipcode': "92804"},
  {'name': "Hall Apt 2-East", 'gender': "C", 'zipcode': "92804"}, 
  {'name': "Hall Apt 2-West", 'gender': "C", 'zipcode': "92804"},
  {'name': "Hall Apt 4-West", 'gender': "C", 'zipcode': "92804"},
  {'name': "Hall Apt 5-West", 'gender': "C", 'zipcode': "92804"},
  {'name': "Hall Apt 6-East", 'gender': "C", 'zipcode': "92804"},
  {'name': "Hall Apt 6-West", 'gender': "C", 'zipcode': "92804"}  
  ]


class Command(BaseCommand):

  def _create_houses(self):
    city, created = City.objects.get_or_create(name="Anaheim", state="CA", country="US")
    for house in houses:
      address, address_created = Address.objects.get_or_create(address1=house['name'], city=city, zip_code=house['zipcode'])
      house_obj, house_created = House.objects.get_or_create(name=house['name'], address=address, gender=house['gender'], used=True)
      if house_created:
        print "House %s created" % house['name']
      else:
        print "House %s already exists" % house['name']

  def handle(self, *args, **options):
    print( "* Populating houses")
    self._create_houses()
