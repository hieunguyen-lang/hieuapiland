from source import app
from source.main.function.postComments import *

#get all comment
app.add_url_rule('/api/post/comments/<int:PostID>', methods=['GET'], view_func=getAllComment)

#add comment
app.add_url_rule('/api/post/add_comment/<int:PostID>', methods=['POST'], view_func=jwt_required()(addComment))

#like comment
app.add_url_rule('/api/post/liekcomment/<int:CommentID>', methods=['POST'], view_func=jwt_required()(likecomment))

#remove favorite comment
app.add_url_rule('/api/forum/comment/remove_favorite/<int:CommentID>', methods=['DELETE'], view_func=removeFavoriteComment)

#remove comment
app.add_url_rule('/api/post/comment/remove/<int:CommentID>', methods=['DELETE'], view_func=jwt_required()(removeComment))

#UPDATE COMENT 
app.add_url_rule('/api/post/comment/update/<int:CommentID>', methods=['PATCH'], view_func=jwt_required()(updateComment))
#remove all comment in a Post
app.add_url_rule('/api/forum/comment/remove_all_comment/<int:PostID>', methods=['DELETE'], view_func=removeAllComment)

#view post img  
app.add_url_rule('/api/post/image/<path>', methods=['GET'], view_func=get_postimg)