from source import app
from source.main.function.boxs import *

#view a group 
#add new box
app.add_url_rule('/api/box/add_box', methods=['POST'], view_func=jwt_required()(addNewBox))

#View Box by ID
app.add_url_rule('/api/box/view_box/<int:BoxID>', methods=['GET'], view_func=viewBox)

#View List Box 
app.add_url_rule('/api/box/viewlist_box', methods=['GET'], view_func=viewListBox)

#Change Box Name
app.add_url_rule('/api/box/change_boxname/<int:BoxID>', methods=['PATCH'], view_func=jwt_required()(changeBoxName))

#Change Box Description
app.add_url_rule('/api/box/change_description/<int:BoxID>', methods=['PATCH'], view_func=jwt_required()(changeBoxDescription))