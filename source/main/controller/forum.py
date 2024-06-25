from source import app
from source.main.function.forum import *

#Add new post
app.add_url_rule('/api/forum/add_post', methods=['POST'], view_func=jwt_required()(addNewPost))

#Admin block user add new post
app.add_url_rule('/api/forum/block_user/<int:UserID>', methods=['PATCH'], view_func=jwt_required()(blockUser))

#View Post
app.add_url_rule('/api/forum/view_post/<int:PostID>', methods=['GET'], view_func=viewPost)

#Get list ALL POST
app.add_url_rule('/api/forum/view_allpost', methods=['GET'], view_func=getListAllPost)

#Get list post by groupID
app.add_url_rule('/api/forum/group/<int:GroupID>', methods=['GET'], view_func=getListPost)

#Update Post
app.add_url_rule('/api/forum/update_post/<int:PostID>', methods=['PATCH'], view_func=jwt_required()(updatePost))

#Remove Post
app.add_url_rule('/api/forum/delete_post/<int:PostID>', methods=['DELETE'], view_func=jwt_required()(deletePost))

#search post
app.add_url_rule('/api/forum/search/<string:key>', methods=['GET'], view_func=searchPost)

#favorite post
app.add_url_rule('/api/forum/favorite/<int:UserID>/<int:PostID>', methods=['POST'], view_func=favoritePost)