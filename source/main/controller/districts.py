from source import app
from source.main.function.districts import *

#add image
app.add_url_rule('/api/districts/view/', methods=['GET'], view_func=viewDistrict)
#list all districts of province
app.add_url_rule('/api/districts/Byprovince/<int:ProvinceID>', methods=['GET'], view_func=viewDistrictsofProvince)