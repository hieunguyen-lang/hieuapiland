from source import app
from source.main.function.zonings import *


app.add_url_rule('/api/zonings/view', methods=['GET'], view_func=viewZoningsofDistrict)


#view image  zoning
app.add_url_rule('/api/zonings/image/<path>', methods=['GET'], view_func=get_image)
