from source.main.controller.users import *
from source.main.controller.userPhotos import *
from source.main.controller.relationships import *
from source.main.controller.locations import *
from source.main.controller.forum import *
from source.main.controller.groups import *
from source.main.controller.provinces import*
from source.main.controller.districts import *
from source.main.controller.zonings import *
from source.main.controller.postComments import *
from source.main.controller.images import *
from source.main.controller.boxs import *
from source.main.controller.LandAuctions import *
from flask_jwt_extended import create_access_token, get_jwt_identity, set_access_cookies

def reader():
    return '<a href="/docs">/docs</a> to read the documentation'

def refresh_token():
    try:
        current_user = get_jwt_identity()
        CurrentUserID = current_user.get('UserID')
        refresh_token = request.cookies.get('refresh_token_cookie')
        token_entry = RefreshTokens.query.filter_by(UserID=CurrentUserID, token=refresh_token).first()
        print(token_entry)
        if token_entry:
            if not token_entry or token_entry.expires_at < datetime.now():
                return jsonify({"Refresh token is invalid or has expired"})

            new_access_token = create_access_token(identity=current_user)
            response = jsonify({
                "msg": "refresh successful",
                "access_token": new_access_token
            })
            set_access_cookies(response, new_access_token)
            return response
        else:
            return make_response(
                    jsonify({"status": 404, "message": "token_entry not found"}), 404
                )
    except Exception as e:
        error = str(e)
        return make_response(
                jsonify(
                    {
                        "Status": 500,
                        "message": "error",
                        "debugMess": error,
                    }
                ),
                500,
            )
        

def make_folder_user(id_user, PATH_IMAGE, image):
    if not os.path.isdir(PATH_IMAGE):
        os.makedirs(PATH_IMAGE)
    else:
        user_path = os.path.join(PATH_IMAGE, str(id_user))
        if not os.path.isdir(user_path):
            os.makedirs(user_path)
        else:
            image.save(os.path.join(user_path, image.filename))

    user_path = os.path.join(PATH_IMAGE, str(id_user))
    return send_from_directory(user_path, image.filename)
