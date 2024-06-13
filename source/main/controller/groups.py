from source import app
from source.main.function.groups import *

#view a group 
app.add_url_rule('/api/group/view_group/<int:GroupID>', methods=['GET'], view_func=singleGroup)

#view all group by BoxID
app.add_url_rule('/api/group/all_group/<int:BoxID>', methods=['GET'], view_func=allGroup)

#add group
app.add_url_rule('/api/group/add_group/<int:UserID>', methods=['POST'], view_func=jwt_required()(addGroup))

#change group name
app.add_url_rule('/api/group/update_group/<int:GroupID>', methods=['PATCH'], view_func=jwt_required()(changeGroupName))

#change group image
app.add_url_rule('/api/group/groupImg/<int:GroupID>', methods=['PATCH'], view_func=jwt_required()(changeImgGroup))

#delete group
app.add_url_rule('/api/group/remove_group/<int:GroupID>', methods=['DELETE'], view_func=jwt_required()(removeGroup))

#count post on group
app.add_url_rule('/api/group/count_group', methods=['GET'], view_func=countGroup)

#search post on group
app.add_url_rule('/api/group/search/<int:GroupID>/<string:key>', methods=['GET'], view_func=searchPostInGroup)