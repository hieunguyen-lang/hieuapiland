from source import app
from source.main.function.provinces import *

#add image
app.add_url_rule('/api/provinces/add_province', methods=['POST'], view_func=addProvince)
app.add_url_rule('/api/provinces/view/', methods=['GET'], view_func=viewProvince)
#get district of pro

