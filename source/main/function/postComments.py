from flask import jsonify, request, make_response, send_from_directory
from source import db, app
from source.main.extend import *
from source.main.model.postComments import PostComments
from source.main.model.commentFavorite import CommentFavorite
from source.main.model.users import Users
from source.main.model.forumPosts import ForumPosts
from source.main.model.commentPhotos import CommentPhotos
from flask_mail import *
from datetime import datetime
from sqlalchemy.sql import and_
from flask_jwt_extended import create_access_token, jwt_required, get_jwt_identity
def getAllComment(PostID):
    try:
        comments = PostComments.query.filter(PostComments.PostID == PostID)
        data = []
        for item in comments:
            
            favorite = CommentFavorite.query.filter(CommentFavorite.CommentID == item.CommentID)
            commentimg = CommentPhotos.query.filter(CommentPhotos.CommentID == item.CommentID).first()
            if commentimg:
                img = commentimg.PhotoURL
            else:
                img = None
            user = Users.query.filter(Users.UserID == item.UserID).first()
            favorite_count = favorite.count()
            comment_info = {
                'PostID': item.PostID,
                'UserID': item.UserID,
                'Avatar': user.avatarLink,
                'Username': user.Username,
                'FullName': user.FullName,
                'Content': item.Content,
                'CommentTime': item.CommentTime,
                'CommentUpdateTime': item.CommentUpdateTime,
                'FavoriteCount': favorite_count,
                'CommentID': item.CommentID,
                'CmtPhoto': img
               
            }
            data.append(comment_info)

        return data
    except Exception as e:
        print(e)
        return make_response(jsonify({'status': 400, 'message': 'An error occurred when getting all comments'}))

    
def addComment(PostID):
    try:
        current_user = get_jwt_identity()
        user_role = current_user.get('Role')
        userid = current_user.get('UserID')
        json_data = request.json
        post = ForumPosts.query.filter(ForumPosts.PostID == PostID).first()
        str1 = "http://127.0.0.1:2345/api/post/image/"
        str2 = "commentimgid="
        str3 = "/home/hieu/Downloads/hieuapiland/source/images/postimg/"
        if post and json_data["Content"] and json_data["Images"] is None:
            comment = PostComments(PostID=PostID, UserID=userid, Content=json_data['Content'],CommentTime=datetime.now(), CommentUpdateTime=datetime.now())
            db.session.add(comment)
            db.session.commit()
            commentid = comment.CommentID
            return make_response(jsonify({'Status': 200, 'message': 'Add comment successfully!'}))
        if post and json_data["Content"] and json_data["Images"]:
            try:
                comment = PostComments(PostID=PostID, UserID=userid, Content=json_data['Content'],CommentTime=datetime.now(), CommentUpdateTime=datetime.now())
                db.session.add(comment)
                db.session.commit()
                commentid = comment.CommentID
                plus = 0
                for item in json_data['Images']:
                    image_comment = CommentPhotos(
                                                    CommentID=commentid, 
                                                    PhotoURL=saveandreduceimg(item, str1, str2, str3), 
                                                    UploadTime=datetime.now()
                                                    )

                    db.session.add(image_comment)
                    db.session.commit()
                    
                        
                return make_response(jsonify({'Status': 200, 'message': 'Add comment successfully!'}))
            except Exception as e:
                print(e)
                db.session.rollback()
                return make_response(jsonify({'Status': 400, 'message': 'Bad Request!'}))
    except Exception as e:
        print(e)
        db.session.rollback()
        return make_response(jsonify({'Status':500,'message':'An error occurred when get add comment!'}))
    
    
def likecomment(CommentID):
    try:
        current_user = get_jwt_identity()
        userid = current_user.get('UserID')
        comment_favorite = CommentFavorite.query.filter(
            and_(CommentFavorite.UserID == userid, CommentFavorite.CommentID == CommentID)).first()
        
        if comment_favorite:
            db.session.delete(comment_favorite)
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
        if comment_favorite is None:
            new_favorite = CommentFavorite(UserID=userid, CommentID=CommentID, FavoriteType=True, FavoriteTime=datetime.now())
            db.session.add(new_favorite)
            db.session.commit()
            return make_response(jsonify({'status': 200, 'message':'Favorite Sucessfully!'}))
    except Exception as e:
        print(e)
        return make_response(jsonify({'status': 500, 'message': 'An error occurred while favoriting the post'}), 500)
    
    
def removeImageComment(CommentID):
    try:
        comment = PostComments.query.filter_by(CommentID=CommentID).first()
        
        if comment:
            images_to_delete = CommentPhotos.query.filter_by(CommentID=CommentID).all()
            
            if images_to_delete:
                for image in images_to_delete:
                    db.session.delete(image)
                db.session.commit()
                
                return make_response(jsonify({'status': 200, 'message': 'All images deleted successfully'}), 200)
            else:
                return make_response(jsonify({'status': 404, 'message': 'No images found for the comment'}), 404)
        else:
            return make_response(jsonify({'status': 404, 'message': 'Comment not found'}), 404)
    except Exception as e:
        print(e)
        return make_response(jsonify({'status': 500, 'message': 'An error occurred while deleting images'}), 500)


def removeFavoriteComment(CommentID):
    try:
        comment = PostComments.query.filter_by(CommentID=CommentID).first()
        
        if comment:
            favorite_to_delete = CommentFavorite.query.filter_by(CommentID=CommentID).all()
            
            if favorite_to_delete:
                for favorite in favorite_to_delete:
                    db.session.delete(favorite)
                
                db.session.commit()
                
                return make_response(jsonify({'status': 200, 'message': 'All Favorite deleted successfully'}), 200)
            else:
                return make_response(jsonify({'status': 404, 'message': 'No Favorite found for the comment'}), 404)
        else:
            return make_response(jsonify({'status': 404, 'message': 'Comment not found'}), 404)
    except Exception as e:
        print(e)
        return make_response(jsonify({'status': 500, 'message': 'An error occurred while deleting images'}), 500)
    
def removeComment(CommentID):
    try:
        current_user = get_jwt_identity()
        userrole = current_user.get('Role')
        userid = current_user.get('UserID')
        comment = PostComments.query.filter_by(CommentID=CommentID).first()
        if userrole == 1:
            comment = PostComments.query.filter_by(CommentID=CommentID).first()
            
            if comment:
                favorite_to_delete = CommentFavorite.query.filter_by(CommentID=CommentID).all()
                
                if favorite_to_delete:
                    for favorite in favorite_to_delete:
                        db.session.delete(favorite)
                    
                images_to_delete = CommentPhotos.query.filter_by(CommentID=CommentID).all()
                
                if images_to_delete:
                    for image in images_to_delete:
                        db.session.delete(image)

                comment_to_delete = PostComments.query.filter_by(CommentID=CommentID).first()
                db.session.delete(comment_to_delete)
                db.session.commit()
                    
                return make_response(jsonify({'status': 200, 'message': 'Comment deleted successfully'}), 200)
            else:
                return make_response(jsonify({'status': 404, 'message': 'Comment not found!'}), 404)
        if userid == comment.UserID:
            comment = PostComments.query.filter_by(CommentID=CommentID).first()
            
            if comment:
                favorite_to_delete = CommentFavorite.query.filter_by(CommentID=CommentID).all()
                
                if favorite_to_delete:
                    for favorite in favorite_to_delete:
                        db.session.delete(favorite)
                    
                images_to_delete = CommentPhotos.query.filter_by(CommentID=CommentID).all()
                
                if images_to_delete:
                    for image in images_to_delete:
                        db.session.delete(image)

                comment_to_delete = PostComments.query.filter_by(CommentID=CommentID).first()
                db.session.delete(comment_to_delete)
                db.session.commit()
                    
                return make_response(jsonify({'status': 200, 'message': 'Comment deleted successfully'}), 200)
            else:
                return make_response(jsonify({'status': 404, 'message': 'Comment not found!'}), 404)
    except Exception as e:
        print(e)
        return make_response(jsonify({'status': 500, 'message': str(e)}), 500)
def updateComment(CommentID):
    current_user = get_jwt_identity()
    userrole = current_user.get('Role')
    userid = current_user.get('UserID')
    json_data =request.json
    comment = PostComments.query.filter_by(CommentID=CommentID).first()
    commentimg = CommentPhotos.query.filter(CommentPhotos.CommentID == comment.CommentID).first()
    print(commentimg)
    str1 = "http://127.0.0.1:2345/api/post/image/"
    str2 = "commentimgid="
    str3 = "/home/hieu/Downloads/hieuapiland/source/images/postimg/"
    if userid == comment.UserID:
        try:
            if json_data["Content"]:
                comment.Content = json_data["Content"]
                db.session.commit()
            if json_data["PhotoURL"]:
                if commentimg:
                    try:
                        folder_path ="/home/hieu/Downloads/hieuapiland/source/images/postimg"
                        filenamestring = commentimg.PhotoURL
                        print(filenamestring)
                        filename = filenamestring.replace("http://127.0.0.1:2345/api/post/image/", "") 
                        print(filename)
                        delete_file_in_folder(folder_path ,filename)
                        commentimg.PhotoURL = saveandreduceimg(json_data["PhotoURL"], str1, str2, str3)
                        db.session.commit()   
                    except:
                        db.session.rollback()
                if commentimg is None:
                    commentimg.PhotoURL = saveandreduceimg(json_data["PhotoURL"], str1, str2, str3)
                    db.session.commit()   
            return make_response(jsonify({'status': 200, 'message': 'update  successfully'}), 200)  
        except:
            db.session.rollback()
       
def removeAllComment(PostID):
    try:
        post = ForumPosts.query.filter_by(PostID=PostID).first()
        
        if post:
            comment_to_delete = PostComments.query.filter_by(PostID=PostID).all()
            
            if comment_to_delete:
                for comment in comment_to_delete:
                    comment_id = comment.CommentID
                    removeComment(comment_id)
                
                return make_response(jsonify({'status': 200, 'message': 'All Comment deleted successfully'}), 200)
            else:
                return make_response(jsonify({'status': 404, 'message': 'No Comment found for the comment'}), 404)
        else:
            return make_response(jsonify({'status': 404, 'message': 'Comment not found'}), 404)
    except:
        return make_response(jsonify({'Status':500,'message':'An error occurred!'}))
    
def get_postimg(path):
    return send_from_directory(app.config['Image_FOLDERS'][2], path)