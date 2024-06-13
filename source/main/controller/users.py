from source import app
from source.main.function.users import *
from itsdangerous import URLSafeTimedSerializer
from postmarker.core import PostmarkClient


client = PostmarkClient(server_token=app.config['POSTMARK_API'])
s = URLSafeTimedSerializer(app.config["SECRET_KEY"])

#check online for a user
app.add_url_rule('/api/checkOnline/<UserID>', methods=['GET'], view_func=checkOnline)

#check online for all user
app.add_url_rule('/api/checkOnlineAll', methods=['GET'], view_func=checkOnlineForAllUsers)

#login logout
app.add_url_rule('/api/login', methods=['POST'], view_func=loginUser)
app.add_url_rule('/api/logout', methods=['POST'], view_func=jwt_required()(logout))

#view private Profile User only user and admin can view
app.add_url_rule('/api/private/profile/<int:UserID>', methods=['GET'], view_func=jwt_required()(viewProfile))

#confirm token
app.add_url_rule('/api/token', methods=['GET'], view_func=cofirmToken)

# Create User 
#app.add_url_rule('/api/create', methods=['POST'], view_func=createUser)
app.add_url_rule('/api/register', methods=['POST'], view_func=createUser)
app.add_url_rule('/api/confirm/<token>',  methods=['GET', 'PATCH'], view_func=confirm)
# User forgot password

"""app.add_url_rule('/api/confirmForgot/<token>',  methods=['GET', 'POST'], view_func=forgot)
app.add_url_rule('/api/confirmForgotPassword/<token>', methods=['GET', 'POST'], view_func=confirmForgotPassword)"""
app.add_url_rule('/api/forgotPassword', methods=['POST'], view_func=forgotPassword)

# User change password
app.add_url_rule('/api/profile/change_password', methods=['PATCH'], view_func=jwt_required()(changePassword))

# Phone Number
app.add_url_rule('/api/profile/phone/', methods=['PATCH'], view_func=jwt_required()(changePhone))

# Gender
app.add_url_rule('/api/profile/gender/<int:id>', methods=['PATCH'], view_func=jwt_required()(changeGender))

# BirthDate
app.add_url_rule('/api/profile/birthdate/<id>', methods=['PATCH'], view_func=jwt_required()(changeBirthDate))

# BirthTime
app.add_url_rule('/api/profile/birthtime/<id>', methods=['PATCH'], view_func=jwt_required()(changeBirthTime))

# Status Anonymous
app.add_url_rule('/api/profile/anonymous/<id>', methods=['PATCH'], view_func=changeAnonymous)

app.add_url_rule('/api/check_status/<id>', methods=['GET'], view_func=checkStatus)

#Change Profile
app.add_url_rule('/api/profile/change_profile/<id>', methods=['PUT'], view_func=updateUser)
#Upload Zoning Image
app.add_url_rule('/api/upload/<int:id>', methods=['POST'], view_func=UploadZoningImg)
