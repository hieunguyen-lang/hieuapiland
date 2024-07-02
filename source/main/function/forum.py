from source import db
from flask import request, make_response, jsonify
from sqlalchemy import or_, and_
from source.main.model.forumPosts import ForumPosts
from source.main.model.forumPhotos import ForumPhotos
from source.main.model.favorite import Favorite
from source.main.model.users import Users
from flask_jwt_extended import create_access_token, jwt_required, get_jwt_identity
from source.main.extend import *
from source.main.function.postComments import *
from source.main.model.postComments import PostComments
from source.main.model.commentPhotos import CommentPhotos
from datetime import datetime
from sqlalchemy.sql import label, text


def addNewPost():
    try:
        current_user = get_jwt_identity()
        UserID = current_user.get('UserID')
        user = Users.query.filter(Users.UserID == UserID).first()
        if user.Blocked:
            return make_response(
                jsonify(
                    {"status": 400, "message": "User has been blocked"}
                ),
                400,
            )
        else:
            if request.json:
                json_data = request.json
                required_fields = [
                "GroupID",
                "Title",
                "Content",
                "PostLatitude",
                "PostLongitude",
            ]
                for field in required_fields:
                    if field not in json_data:
                        return make_response(
                            jsonify(
                                {"status": 400, "message": f"Missing required field: {field}"}
                            ),
                            400,
                        )
                post = ForumPosts(
                    UserID=UserID,
                    GroupID=json_data["GroupID"],
                    Title=json_data["Title"],
                    Content=json_data["Content"],
                    PostTime=datetime.now(),
                    IPPosted=request.remote_addr,
                    PostLatitude=json_data["PostLatitude"],
                    PostLongitude=json_data["PostLongitude"],
                )
                db.session.add(post)
                db.session.commit()
                str1 = "http://127.0.0.1:2345/api/post/image/"
                str2 = "Postid="
                str3 = "/home/hieu/Downloads/hieuapiland/source/images/postimg/"
                if json_data["Images"]:
    
                    for item in json_data["Images"]:
                        try:
                            image_post = ForumPhotos(
                                PostID=post.PostID, 
                                PhotoURL=saveandreduceimg(item, str1, str2, str3), 
                                UploadTime=datetime.now()
                            )
                            db.session.add(image_post)
                            db.session.commit()
                        except:
                            db.session.rollback()

                # Retrieve and return the newly created post
                post_id = post.PostID
                return viewPost(post_id)
            else:
                return make_response(
                        jsonify(
                            {"status": 400, "message": "Bad Request - No JSON data provided"}
                        ),
                        400,
                    )
    except Exception as e:
        db.session.rollback()
        print(f"Error: {e}")
        error = "An error occurred while creating the post: " + str(e)
        return make_response(jsonify({"status": 500, "message": error}), 500)

def blockUser(UserID):
    current_user = get_jwt_identity()
    Current_UserID = current_user.get('UserID')
    Role = current_user.get('Role')
    if Role == 1:
        user = Users.query.filter(Users.UserID == UserID).first()
        user.Blocked = True
        db.session.commit()
        return make_response(
                jsonify(
                    {"status": 200, "message": "Block user Successfully"}
                ),
                200,
            )
    else:
        return make_response(
                jsonify(
                    {"status": 200, "message": "You are not admin"}
                ),
                200,
            )
    
    
def viewPost(PostID):
    try:
        data = []
        post = ForumPosts.query.filter(ForumPosts.PostID==PostID).first()
        post_favorite_count = Favorite.query.filter(
            and_(Favorite.PostID == PostID, Favorite.FavoriteType == 1)
        ).count()
        ListImgPosts = ForumPhotos.query.filter(ForumPhotos.PostID == PostID).all()

        if post:
            post_data = dict ()
            post_data["UserID"]= post.UserID
            post_data["GroupID"]= post.GroupID
            post_data["Content"]= post.Content
            post_data["Title"]= post.Title
            post_data["PostTime"]= post.PostTime
            post_data["IPPosted"]= post.IPPosted
            post_data["PostLatitude"]= post.PostLatitude
            post_data["PostLongitude"]= post.PostLongitude
            post_data["FavoriteNumber"]= post_favorite_count
            
            data.append(post_data)
        post_img = []
        if ListImgPosts:
            for item in ListImgPosts:
                post_img.append(item.PhotoURL)
            data.append(post_img)

        return jsonify(data)
        

    except Exception as e:
        print(f"Error: {e}")
        error = "An error occurred " + str(e)
        return {"status": 500, "message": error}


def updatePost(PostID):
    try:
        if not request.json:
            return make_response(
                jsonify(
                    {"status": 400, "message": "Bad Request - No JSON data provided"}
                ),
                400,
            )

        json_data = request.json

        required_fields = [
            "Title",
            "Content",
           
        ]
        for field in required_fields:
            if field not in json_data:
                return make_response(
                    jsonify(
                        {"status": 400, "message": f"Missing required field: {field}"}
                    ),
                    400,
                )

        post_need_update = ForumPosts.query.filter(ForumPosts.PostID == PostID).first()

        if post_need_update:
            if "Title" in json_data:
                post_need_update.Title = json_data["Title"]
            if "Content" in json_data:
                post_need_update.Content = json_data["Content"]

            db.session.commit()
            return viewPost(PostID)
        else:
            return make_response(
                jsonify({"Status": 404, "Message": "The post not found!"}), 404
            )
        
    except Exception as e:
        return make_response(
            jsonify(
                {"status": 500, "message": "An error occurred while updating the post"}
            ),
            500,
        )


def deletePost(PostID):
    try:
        current_user = get_jwt_identity()
        user_role = current_user.get('Role')
        if user_role == 0 or user_role == 1:
            post_need_delete = ForumPosts.query.filter(ForumPosts.PostID == PostID).first()

            if post_need_delete:
                removeFavorite(PostID)
                removeAllComment(PostID)
                db.session.delete(post_need_delete)
                db.session.commit()
                return make_response(
                    jsonify({"Status": 200, "Message": "Post has been deleted!"}), 200
                )
            else:
                return make_response(
                    jsonify({"Status": 404, "Message": "The post not found!"}), 404
                )
        return make_response(
                    jsonify({"Status": 404, "Message": "User Role not found"}), 404
                )
    except Exception as e:
        return make_response(
            jsonify(
                {"status": 500, "message": str(e)}
            ),
            500,
        )


def searchPost(key):
    try:
        posts = (
            ForumPosts.query.filter(
                or_(
                    ForumPosts.Title.ilike(f"%{key}%"),
                    ForumPosts.Content.ilike(f"%{key}%"),
                )
            )
            .order_by(ForumPosts.PostTime.desc())
            .all()
        )

        if posts:
            posts_data = [
                {
                    "PostID": post.PostID,
                    "UserID": post.PostID,
                    "GroupID": post.GroupID,
                    "Title": post.Title,
                    "Content": post.Content,
                    "PostTime": post.PostTime,
                    "IPPosted": post.IPPosted,
                    "PostLatitude": post.PostLatitude,
                    "PostLongitude": post.PostLongitude,
                }
                for post in posts
            ]
            return jsonify({"status": 200, "Posts": posts_data})
        else:
            return make_response(
                jsonify({"status": 404, "Message": "No posts found for the given key"}),
                404,
            )

    except Exception as e:
        return make_response(
            jsonify(
                {
                    "status": 500,
                    "message": "An error occurred while searching for posts",
                }
            ),
            500,
        )


def favoritePost(UserID, PostID):
    try:
        post_favorite = Favorite.query.filter(
            and_(Favorite.UserID == UserID, Favorite.PostID == PostID)
        ).first()

        if post_favorite:
            db.session.delete(post_favorite)
            db.session.commit()
            return make_response(
            jsonify(
                {
                    "status": 200,
                    "message": "Remove Favorite Success",
                }
            ),
            200,
        )
        else:
            new_favorite = Favorite(
                UserID=UserID,
                PostID=PostID,
                FavoriteType=True,
                FavoriteTime=datetime.now(),
            )
            db.session.add(new_favorite)

        db.session.commit()
        return viewPost(PostID)

    except Exception as e:
        return make_response(
            jsonify(
                {
                    "status": 500,
                    "message": "An error occurred while favoriting the post",
                }
            ),
            500,
        )


def removeFavorite(PostID):
    try:
        post = ForumPosts.query.filter_by(PostID=PostID).first()

        if post:
            favorite_to_delete = Favorite.query.filter_by(PostID=PostID).all()

            if favorite_to_delete:
                for favorite in favorite_to_delete:
                    db.session.delete(favorite)

                db.session.commit()

                return make_response(
                    jsonify(
                        {"status": 200, "message": "All Favorite deleted successfully"}
                    ),
                    200,
                )
            else:
                return make_response(
                    jsonify(
                        {"status": 404, "message": "No Favorite found for the comment"}
                    ),
                    404,
                )
        else:
            return make_response(
                jsonify({"status": 404, "message": "Comment not found"}), 404
            )
    except Exception as e:
        print(e)
        return make_response(
            jsonify(
                {"status": 500, "message": "An error occurred while deleting images"}
            ),
            500,
        )


def getListPost(GroupID):
    try:
        listposts = ForumPosts.query.filter(ForumPosts.GroupID == GroupID).all()
        listpostdata = []
        for item in listposts:
            data = dict()
            data["PostID"] = item.PostID
            data["UserID"] = item.UserID
            data["GroupID"] = item.GroupID
            data["Title"] = item.Title
            data["Content"] = item.Content
            data["PostTime"] = item.PostTime
            data["UpdatePostAt"] = item.UpdatePostAt
            listpostdata.append(data)
        return listpostdata
    except Exception as e:
        print(e)
        return make_response(jsonify({'status': 500, 'message': 'An error occurred!'+ str(e)}), 500)  
def getListAllPost():
    try:
        listposts = ForumPosts.query.all()
        listpostdata = []
        for item in listposts:
            data = dict()
            data["PostID"] = item.PostID
            data["UserID"] = item.UserID
            data["GroupID"] = item.GroupID
            data["Title"] = item.Title
            data["Content"] = item.Content
            data["PostTime"] = item.PostTime
            data["UpdatePostAt"] = item.UpdatePostAt
            listpostdata.append(data)
        return listpostdata
    except Exception as e:
        print(e)
        return make_response(jsonify({'status': 500, 'message': 'An error occurred!'+ str(e)}), 500) 