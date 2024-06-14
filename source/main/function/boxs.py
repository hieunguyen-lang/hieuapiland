import base64
from source import db
from flask import request, make_response, jsonify
from sqlalchemy import or_, and_
from flask_jwt_extended import create_access_token, jwt_required, get_jwt_identity
from source.main.model.Boxs import Boxs
from source.main.function.forum import viewPost, deletePost
from sqlalchemy import func
from datetime import datetime
from sqlalchemy.sql import label, text


def addNewBox():
    try:
        current_user = get_jwt_identity()
        user_role = current_user.get('Role')
        UserID = current_user.get('UserID')
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
                "BoxName",
                "Description",
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

            box = Boxs(
                UserID = UserID,  
                BoxName = json_data["BoxName"],
                Description = json_data["Description"],
                CreateAt = datetime.now(),
                avatarLink = json_data["avatarLink"],
            )
            db.session.add(box)
            db.session.commit()
            '''
            # Add associated images (PhotoURL) if provided
            if "PhotoURL" in json_data and isinstance(json_data["PhotoURL"], list):
                for item in json_data["PhotoURL"]:
                    image_post = ForumPhotos(
                        PostID=post.PostID, 
                        PhotoURL=base64ToByte(item), 
                        UploadTime=datetime.now()
                    )
                    db.session.add(image_post)
                db.session.commit()
            '''
        # Retrieve and return the newly created box
            return make_response(
                    jsonify(
                        {"status": 400, "message": "Add new box success "}
                    ),
                    400,
                )
        else:
            return make_response(
                    jsonify(
                        {"status": 400, "message": "User is not admin role "}
                    ),
                    400,
                )
    except Exception as e:
        print(f"Error: {e}")
        error = "An error occurred while creating the post: " + str(e)
        return make_response(jsonify({"status": 500, "message": error}), 500)


def viewBox(BoxID):
    try:
        BoxDataJson= []
        box = Boxs.query.filter(Boxs.BoxID == BoxID).first()
        
        if box:
            data = dict ()
            data["BoxID"]= box.BoxID
            data["BoxName"]= box.BoxName
            data["Description"]= box.Description
            data["avatarLink"]= box.avatarLink
            
            BoxDataJson.append(data)
          

            return jsonify(BoxDataJson)
        else:
            return {"status": 404, "message": "Post not found"}

    except Exception as e:
        print(f"Error: {e}")
        error = "An error occurred " + str(e)
        return {"status": 500, "message": error}

def viewListBox():
    try:
        ListBoxJson = []
        ListBox = Boxs.query.all()
        if not ListBox:
            return make_response(
                    jsonify(
                        {"status": 400, "message": "Bad Request - No JSON data provided"}
                    ),
                    400,
                )
        print(ListBox)
        if ListBox:
            
            for item in ListBox:
                Boxdata = dict()
                Boxdata["BoxID"] = item.BoxID
                Boxdata["UserID"] = item.UserID
                Boxdata["BoxName"] = item.BoxName
                Boxdata["CreateAt"] = item.CreateAt.strftime('%Y-%m-%dT%H:%M:%SZ')
                Boxdata["Description"] = item.Description
                Boxdata["avatarLink"] = item.avatarLink
                ListBoxJson.append(Boxdata)

        return jsonify(ListBoxJson)
    except Exception as e:
        print(f"Error: {e}")
        error = "An error occurred " + str(e)
        return {"status": 500, "message": error}
def changeBoxName(BoxID):
    try:
        current_user = get_jwt_identity()
        user_role = current_user.get('Role')
        if user_role == 1:
            json_data = request.json
            if json_data:
                box = Boxs.query.filter(Boxs.BoxID == BoxID).first()
                if box:
                    box.BoxName = json_data["BoxName"]
                    db.session.commit()
                else: 
                    return make_response(
                    jsonify(
                        {"status": 400, "message": "box field has no data"}
                    ),
                    400,
                )
            else:
                return make_response(
                    jsonify(
                        {"status": 400, "message": "Bad Request - No JSON data provided"}
                    ),
                    400,
                ) 
            return make_response(
                    jsonify(
                        {"status": 400, "message": "Change BoxName Successfully"}
                    ),
                    400,
                )   
        else:
            return make_response(
                    jsonify(
                        {"status": 400, "message": "User is not admin role"}
                    ),
                    400,
                )
        
    except Exception as e:
        print(f"Error: {e}")
        error = "An error occurred " + str(e)
        return {"status": 500, "message": error}
def changeBoxDescription(BoxID):
    try:
        current_user = get_jwt_identity()
        user_role = current_user.get('Role')
        if user_role == 1:
            json_data = request.json
            if json_data:
                box = Boxs.query.filter(Boxs.BoxID == BoxID).first()
                if box:
                    box.Description = json_data["Description"]
                    db.session.commit()
                else: 
                    return make_response(
                    jsonify(
                        {"status": 400, "message": "box field has no data"}
                    ),
                    400,
                )
            else:
                return make_response(
                    jsonify(
                        {"status": 400, "message": "Bad Request - No JSON data provided"}
                    ),
                    400,
                ) 
            return make_response(
                    jsonify(
                        {"status": 400, "message": "Change BoxName Successfully"}
                    ),
                    400,
                )   
        else:
            return make_response(
                    jsonify(
                        {"status": 400, "message": "User is not admin role"}
                    ),
                    400,
                )
        
    except Exception as e:
        print(f"Error: {e}")
        error = "An error occurred " + str(e)
        return {"status": 500, "message": error}