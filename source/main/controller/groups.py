from source import app
from source.main.function.groups import *

#view a group 
app.add_url_rule('/api/group/view_group/<int:GroupID>', methods=['GET'], view_func=singleGroup)

#view all group by BoxID
app.add_url_rule('/api/group/all_group/<int:BoxID>', methods=['GET'], view_func=allGroup)

#add group
app.add_url_rule('/api/group/add_group', methods=['POST'], view_func=jwt_required()(addGroup))

#change group image
app.add_url_rule('/api/group/update_group/<int:GroupID>', methods=['PATCH'], view_func=jwt_required()(update_group))

#delete group
app.add_url_rule('/api/group/remove_group/<int:GroupID>', methods=['DELETE'], view_func=jwt_required()(removeGroup))

#count post on group
app.add_url_rule('/api/group/count_group', methods=['GET'], view_func=countGroup)

#search post on group
app.add_url_rule('/api/group/search/<int:GroupID>/<string:key>', methods=['GET'], view_func=searchPostInGroup)

#view group profile img  
app.add_url_rule('/api/group/image/<path>', methods=['GET'], view_func=get_groupimg)

