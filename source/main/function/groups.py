import base64
from source import db
from flask import request, make_response, jsonify
from sqlalchemy import or_, and_
from flask_jwt_extended import create_access_token, jwt_required, get_jwt_identity
from source.main.model.groups import Groups
from source.main.model.forumPosts import ForumPosts
from source.main.function.forum import viewPost, deletePost
from sqlalchemy import func
from datetime import datetime
from sqlalchemy.sql import label, text


def singleGroup(GroupID):
    try:
        group = Groups.query.filter(Groups.GroupID == GroupID).all()
        DataGroupJson = []
        for item in group:
            data = dict()
            data["GroupID"] = item.GroupID
            data["UserID"] = item.UserID
            data["BoxID"] = item.BoxID
            data["GroupName"] = item.GroupName
            data["CreateAt"] = item.CreateAt.strftime('%Y-%m-%dT%H:%M:%SZ')
            data["avatarLink"] = item.avatarLink
            """
            if item.avatarLink:
                group["avatarLink"] = str(base64.b64encode(item.avatarLink).decode('utf-8'))
            else:
                group["avatarLink"] = None
            """
            DataGroupJson.append(data)
        return DataGroupJson
    except Exception as e:
        print(e)
        return make_response(jsonify({"Status": 400, "message": str(e)}))

def allGroup(BoxID):
    try:
        group = Groups.query.filter(Groups.BoxID == BoxID).all()
        ListGroupJson = []
        for item in group:
            data = {}
            data["GroupID"] = item.GroupID
            data["UserID"] = item.UserID
            data["BoxID"] = item.BoxID
            data["GroupName"] = item.GroupName
            data["CreateAt"] = item.CreateAt.strftime('%Y-%m-%dT%H:%M:%SZ')
            data["avatarLink"] = item.avatarLink
            """if row.avatarLink:
                group["avatarLink"] = str(base64.b64encode(row.avatarLink).decode('utf-8'))
            else:
                group["avatarLink"] = None"""
            
            ListGroupJson.append(data)
            print(group)
        return ListGroupJson
    except Exception as e:
        print(e)
        return make_response(jsonify({"Status": 400, "message": str(e)}))


def changeGroupName(GroupID):
    try:
        current_user = get_jwt_identity()
        user_role = current_user.get('Role')
        group = Groups.query.filter(Groups.GroupID == GroupID).first()
        print(group)
        if not group:
            return make_response(jsonify({"status": 400, "message": "Missing 'group' field"}), 400)
        if user_role == 0:
            json_data = request.json
            group.GroupName = json_data["GroupName"]
            db.session.commit()
            return make_response(
                jsonify({"Status": 200, "message": "Update group successfully!"})
            )

    except Exception as e:
        db.session.rollback()
        print(e)
        return make_response(jsonify({"Status": 500, "message": str(e)}))


def countGroup():
    try:
        count = db.session.query(Groups).count()
        return make_response(jsonify({"Status": 200, "Count": count}))
    except Exception as e:
        return make_response(jsonify({"Status": 500, "message": "An Error Occurred!"}))


def searchPostInGroup(GroupID, key):
    try:
        posts = (
            db.session.query(ForumPosts, Groups)
            .join(Groups, ForumPosts.GroupID == Groups.GroupID)
            .filter(
                Groups.GroupID == GroupID,
                or_(
                    ForumPosts.Title.ilike(f"%{key}%"),
                    ForumPosts.Content.ilike(f"%{key}%"),
                ),
            )
            .order_by(ForumPosts.PostTime.desc())
            .all()
        )

        if posts:
            posts_data = [
                {
                    "PostID": post.ForumPosts.PostID,
                    "UserID": post.ForumPosts.PostID,
                    "GroupID": post.ForumPosts.GroupID,
                    "Title": post.ForumPosts.Title,
                    "Content": post.ForumPosts.Content,
                    "PostTime": post.ForumPosts.PostTime,
                    "IPPosted": post.ForumPosts.IPPosted,
                    "PostLatitude": post.ForumPosts.PostLatitude,
                    "PostLongitude": post.ForumPosts.PostLongitude,
                    "GroupName": post.Groups.GroupName,
                    "CreateAt": post.Groups.CreateAt.strftime('%Y-%m-%dT%H:%M:%SZ'),
                }
                for post in posts
            ]
            return jsonify({"status": 200, "Posts": posts_data})
        else:
            return make_response(
                jsonify(
                    {
                        "status": 404,
                        "Message": "No posts found for the given key in the specified group",
                    }
                ),
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


def addGroup(UserID):
    try:
        current_user = get_jwt_identity()
        user_role = current_user.get('Role')
        if user_role == 1:
            if not request.json:
                return make_response(
                    jsonify(
                        {"status": 400, "message": "Bad Request - No JSON data provided"}
                    ),
                    400,
                )
            json_data = request.json
            required_fields = [
                "BoxID",
                "GroupName",
                "avatarLink",
            ]
            for field in required_fields:
                if field not in json_data:
                    return make_response(
                        jsonify(
                            {"status": 400, "message": f"Missing required field: {field}"}
                        ),
                        400,
                    )
            
            #image = base64.b64decode(json_data["avatarLink"])
            group = Groups(
                UserID = UserID,
                BoxID = json_data["BoxID"],
                GroupName = json_data["GroupName"],
                avatarLink = json_data["avatarLink"],
                CreateAt = datetime.now()
            )
            db.session.add(group)
            db.session.commit()

            return make_response(
                jsonify({"status": 200, "message": "Add Group Successfully!"}), 200
            )
    except Exception as e:
        db.session.rollback()
        print(e)
        return make_response(jsonify({"status": 400, "message": str(e)}), 400)


def removeGroup(GroupID):
    try:
        current_user = get_jwt_identity()
        user_role = current_user.get('Role')
        if user_role == 0:
            group_need_delete = Groups.query.filter(Groups.GroupID == GroupID).first()
            if not group_need_delete:
                return make_response(jsonify({"status": 400, "message": "Missing 'group_need_delete' field"}), 400)
            if group_need_delete:
                db.session.delete(group_need_delete)
                db.session.commit()
                return make_response(
                    jsonify({"Status": 200, "Message": "The group deleted!"}), 200
                )
            else:
                return make_response(
                    jsonify({"Status": 500, "Message": "The group not found!"}), 500
                )

    except Exception as e:
        db.session.rollback()
        return make_response(
            jsonify(
                {"status": 500, "message": "An error occurred while deleting the post"}
            ),
            500,
        )

def changeImgGroup(GroupID):
    try:

        image = base64.b64decode(request.json["avatarLink"])
       
        group = Groups.query.filter(Groups.GroupID == GroupID).first()
        if group:
            group.avatarLink = image
        db.session.commit()
        return make_response(
            jsonify({"status": 200, "message": "Change Image Successfully"}), 200, 
        )
    
    except Exception as e:
        db.session.rollback()
        print(e)
        return make_response(
            jsonify({"status": 500, "message": "An error occurred"}), 500, 
        )