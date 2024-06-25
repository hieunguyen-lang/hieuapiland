from flask import jsonify, request, make_response, send_from_directory, url_for
from source import app, db
from source.main.model.users import Users
from source.main.model.locations import Locations
from source.main.model.userPhotos import UserPhotos
from source.main.model.ZoningImg_UserUpload import ZoningImg_UserUpload
from source.main.model.RefreshTokens import RefreshTokens
from source.main.extend import *
from source import app
from flask_jwt_extended import (
    create_access_token,
    jwt_required,
    get_jwt_identity,
    create_refresh_token,
    set_access_cookies,
    set_refresh_cookies,
    unset_jwt_cookies,
)
from sqlalchemy import or_, text, and_
import time
import jwt
from itsdangerous import URLSafeTimedSerializer
from flask_mail import *
from postmarker.core import PostmarkClient
from sqlalchemy.exc import IntegrityError
import random
from datetime import datetime, timedelta
from passlib.hash import pbkdf2_sha256
import requests
import secrets
import ipaddress
import string
import json
import re

client = PostmarkClient(server_token=app.config["POSTMARK_API"])
s = URLSafeTimedSerializer(app.config["SECRET_KEY"])

import mysql.connector
from email.message import EmailMessage

config = {
    "user": "root",
    "password": "password",
    "host": "localhost",
    "port": 3306,
    "database": "landinvest",
    "auth_plugin": "mysql_native_password",
}


def get_data_email():
    try:
        connection = mysql.connector.connect(**config)
        cursor = connection.cursor()
        cursor.execute("SELECT gmail, password_app FROM gmail_from")
        gmail_data = cursor.fetchall()
        # Choose a random row from gmail_data
        data = random.choice(gmail_data)
        print(str(data))
    except mysql.connector.Error as error:
        print(f"Failed to connect to MySQL database: {error}")
    finally:
        if "connection" in locals() and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed")
    return data


async def send_mail_to_email(email, random_password, user_name):
    try:

        MainData_body = f""" 
            <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
            <html dir="ltr" xmlns="http://www.w3.org/1999/xhtml" xmlns:o="urn:schemas-microsoft-com:office:office">
            <head></head>
            <body>
                <p>Hello {user_name},</p>
                <p>Your new password: {random_password}</p>
            </body>
            </html>
        """
        print("_____truoc_khi_guimail_____")
        data = get_data_email()
        print(data[0], [data[1]])
        # msg = MIMEText(body, "html")
        # msg["To"] = email
        # msg["From"] = data[0]
        # msg["Subject"] = "FutureLove Account Register - Generate Images With AI"
        # server = smtplib.SMTP("smtp.postmarkapp.com", 587)
        # print("_____SONPRO_____")
        # print(data[0])
        # print(data[1])
        # server.starttls()
        # server.login(data[0], data[1])
        # server.sendmail(msg["From"], msg["To"], msg.as_string())
        # server.quit()
        # print("Email sent successfully!")
        msg = EmailMessage()
        msg["Subject"] = "Your New Password "
        msg["From"] = "devmobilepro1888@gmail.com"
        msg["To"] = email
        msg.set_content(
            f"""\
            {MainData_body}
        """,
            subtype="html",
        )
        server = smtplib.SMTP_SSL("smtp.gmail.com", 465)
        server.ehlo()
        server.login(data[0], data[1])
        server.send_message(msg)

        server.close()
    except Exception as e:
        print("An error occurred while sending the email:")
        print(str(e))
        print(email, user_name)
        return str(e)


async def send_mail_to_register(email, link, user_name):
    try:

        MainData_body = f""" 
            <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
            <html dir="ltr" xmlns="http://www.w3.org/1999/xhtml" xmlns:o="urn:schemas-microsoft-com:office:office">
            <head></head>
            <body>
                <p>Hello {user_name},</p>
                <p>Bam vao link de hoan tat dang ky: {link}</p>
            </body>
            </html>
        """
        print("_____truoc_khi_guimail_____")
        data = get_data_email()
        print(data[0], [data[1]])
        # msg = MIMEText(body, "html")
        # msg["To"] = email
        # msg["From"] = data[0]
        # msg["Subject"] = "FutureLove Account Register - Generate Images With AI"
        # server = smtplib.SMTP("smtp.postmarkapp.com", 587)
        # print("_____SONPRO_____")
        # print(data[0])
        # print(data[1])
        # server.starttls()
        # server.login(data[0], data[1])
        # server.sendmail(msg["From"], msg["To"], msg.as_string())
        # server.quit()
        # print("Email sent successfully!")
        msg = EmailMessage()
        msg["Subject"] = "Your New Password "
        msg["From"] = "devmobilepro1888@gmail.com"
        msg["To"] = email
        msg.set_content(
            f"""\
            {MainData_body}
        """,
            subtype="html",
        )
        server = smtplib.SMTP_SSL("smtp.gmail.com", 465)
        server.ehlo()
        server.login(data[0], data[1])
        server.send_message(msg)

        server.close()
    except Exception as e:
        print("An error occurred while sending the email:")
        print(str(e))
        print(email, user_name)
        return str(e)


def isUserOffline(user):
    current_time = datetime.now()
    last_request_time = user.LastActivityTime

    if last_request_time is not None:
        if (current_time - last_request_time) > timedelta(minutes=1):
            return True
    return False


def isUserOffline(user):
    current_time = datetime.now()
    last_request_time = user.LastActivityTime

    if last_request_time is not None:
        if (current_time - last_request_time) > timedelta(minutes=1):
            return True
    return False


def formatTimeDelta(time_delta):
    days = time_delta.days
    seconds = time_delta.seconds
    hours, remainder = divmod(seconds, 3600)
    minutes, seconds = divmod(remainder, 60)

    if days > 0:
        return f"{days} ngày"
    elif hours > 0:
        return f"{hours} giờ"
    elif minutes > 0:
        return f"{minutes} phút"
    else:
        return "ít hơn 1 phút"


def checkOnline(UserID):
    user = Users.query.get(UserID)
    try:
        if isUserOffline(user):
            time_since_last_activity = datetime.now() - user.LastActivityTime
            formatted_time = formatTimeDelta(time_since_last_activity)
            response_data = {
                "Status": "Offline",
                "UserID": user.UserID,
                "Username": user.Username,
                "OfflineTime": formatted_time,
            }
            return make_response(jsonify(response_data), 200)
        else:
            response_data = {"Status": 200, "Message": "Online"}
            return make_response(jsonify(response_data), 200)

    except Exception as e:
        return make_response(
            jsonify({"Status": 500, "message": "An error occurred"}), 500
        )


def checkOnlineForAllUsers():
    try:
        users = Users.query.all()
        online_users = []
        offline_users = []
        count_offline = 0 
        count_online = 0 
        for user in users:
            if isUserOffline(user):
                time_since_last_activity = datetime.now() - user.LastActivityTime
                formatted_time = formatTimeDelta(time_since_last_activity)
                offline_users.append(
                    {
                        "UserID": user.UserID,
                        "Username": user.Username,
                        "OfflineTime": formatted_time,
                    }
                )
                count_offline+=1
            else:
                online_users.append({"UserID": user.UserID, "Username": user.Username})
                count_online+=1
        response_data = {
            "Status": 200,
            "count_online": count_online,
            "OnlineUsers": online_users,
            "OfflineUsers": offline_users,
            "count_offline": count_offline
        }

        return make_response(jsonify(response_data), 200)

    except Exception as e:
        print(e)
        return make_response(
            jsonify({"Status": 500, "message": "An error occurred"}), 500
        )


def isValidEmail(email):
    email_regex = re.compile(r"[^@]+@[^@]+\.[^@]+")
    return email_regex.match(email) and " " not in email


def isValidUsername(username):
    username_regex = re.compile(r"^[a-zA-Z0-9_]+$")
    return username_regex.match(username) and " " not in username


def isAnonymous(username):
    user = Users.query.filter(Users.Username == username).first()
    print(user)
    print(username)
    if user.IsAnonymous == 1:
        return 1
    return 0


def isAnonymousByID(idUser):
    user = Users.query.filter(Users.UserID == idUser).first()
    print(user)
    print(idUser)
    if user.IsAnonymous == 1:
        return 1
    return 0


def viewProfileById(idUser):
    try:
        if isAnonymousByID(idUser):
            return make_response(
                jsonify({"Status": 404, "message": "Username is Anonymous!"})
            )

        data = []
        user = Users.query.filter(Users.UserID == idUser).first()
        if user:
            user_data = {
                "UserID": user.UserID,
                "Username": user.Username,
                "FullName": user.FullName,
                "Email": user.Email,
                "Phone": user.Phone,
                "Password": user.Password,
                "Gender": user.Gender,
                "avatarLink": byteToString(user.avatarLink),
                "BirthDate": (
                    user.BirthDate.strftime("%Y-%m-%d") if user.BirthDate else None
                ),
                "BirthTime": (
                    user.BirthTime.strftime("%H:%M:%S") if user.BirthTime else None
                ),
                "RegistrationIP": user.RegistrationIP,
                "LastLoginIP": user.LastLoginIP,
                "LastActivityTime": user.LastActivityTime,
                "IsLoggedIn": user.IsLoggedIn,
                "Role": user.Role,
                "ProvinceID": user.ProvinceID,
            }
            print(user.avatarLink)
            images = UserPhotos.query.filter_by(UserID=user.UserID).all()
            photo_urls = [byteToString(image.PhotoURL) for image in images]

            if photo_urls:
                user_data["PhotoURL"] = photo_urls
            data.append(user_data)
            print(data)
            return {"status": 200, "Users": data}
        else:
            return make_response(
                jsonify({"status": 404, "message": "User not found"}), 404
            )
    except Exception as e:
        print(e)
        return make_response(jsonify({"status": 500, "message": str(e)}), 500)


def viewProfile(UserID):
    try:
        current_user = get_jwt_identity()
        CurrentUserID = current_user.get("UserID")
        UserRole = current_user.get("Role")
        if UserRole == 1 or CurrentUserID == UserID:

            UserDataJson = []
            user = Users.query.filter(Users.UserID == UserID).first()
            if user:
                user_data = {
                    "UserID": user.UserID,
                    "Username": user.Username,
                    "FullName": user.FullName,
                    "Email": user.Email,
                    "Phone": user.Phone,
                    "Password": user.Password,
                    "Gender": user.Gender,
                    "avatarLink": byteToString(user.avatarLink),
                    "BirthDate": (
                        user.BirthDate.strftime("%Y-%m-%d") if user.BirthDate else None
                    ),
                    "BirthTime": (
                        user.BirthTime.strftime("%H:%M:%S") if user.BirthTime else None
                    ),
                    "RegistrationIP": user.RegistrationIP,
                    "LastLoginIP": user.LastLoginIP,
                    "LastActivityTime": user.LastActivityTime,
                    "IsLoggedIn": user.IsLoggedIn,
                    "Role": user.Role,
                    "ProvinceID": user.ProvinceID,
                    "Bio": user.Bio,
                    "CurrentAdd": user.CurrentAdd,
                    "BirthPlace": user.BirthPlace,
                }
                images = UserPhotos.query.filter_by(UserID=user.UserID).all()
                photo_urls = [byteToString(image.PhotoURL) for image in images]

                if photo_urls:
                    user_data["PhotoURL"] = photo_urls
                UserDataJson.append(user_data)

                return jsonify(UserDataJson)
            else:
                return make_response(
                    jsonify({"status": 404, "message": "User not found"}), 404
                )
    except Exception as e:
        print(e)
        return make_response(jsonify({"status": 500, "message": str(e)}), 500)


async def sendVerifyLink(Latitude, Longitude, Email, Username):
    # token = s.dumps(json_data["Email"], salt=app.config["SECURITY_PASSWORD_SALT"])
    token = s.dumps(Email, salt=app.config["SECURITY_PASSWORD_SALT"])
    link = url_for("confirm", token=token, _external=True)
    """response = client.emails.send(
            From="admin@samnotes.online",
            To=Email,
            Subject="Confirm",
            TextBody="Land Ivest thanks for using our service. Your confirmation link is: \n "
                + link,
        )"""
    await send_mail_to_register(Email, link, Username)
    user_wait = Users.query.filter(Users.Email == Email).first()
    if user_wait:
        location_current = Locations(
            UserID=user_wait.UserID,
            Latitude=Latitude,
            Longitude=Longitude,
            Type="registration",
            UpdateTime=datetime.now(),
            LastLoginIP=datetime.now(),
        )
        db.session.add(location_current)
        db.session.commit()


def confirm(token):
    try:
        email = s.loads(token, salt=app.config["SECURITY_PASSWORD_SALT"], max_age=3600)
        print(email)
        if email:

            user = Users.query.filter(Users.Email == email).first()
            print(user.Confirmed)
            if user.Confirmed:

                return "Your account was already"
            else:
                user.Confirmed = True
                db.session.commit()
                return make_response(
                    jsonify({"status": 200, "message": "Register Successfully"}), 200
                )
        else:
            return make_response(
                jsonify({"status": 400, "message": "Can found  email"}), 400
            )
    except:
        user = Users.query.filter(Users.Email == email).first()
        if user:
            db.session.delete(user)
            db.session.commit()
        return make_response(
            jsonify({"status": 200, "message": "Your link was expired. Try again"}), 200
        )


# change password
def change(data):
    try:
        json = data
        user = Users.query.filter(Users.gmail == json["Email"]).first()
        user.Password = pbkdf2_sha256.hash(json["Password"])
        db.session.commit()
    except Exception as e:
        print(e)
        return "Updated!"


def timeOffline(UserID):
    try:
        User = Users.query.filter(Users.UserID == id).first()
        if User:
            if User.IsLoggedIn:
                return "User Online!"
            else:
                LastActivityTime = User.LastActivityTime
                current_time = datetime.now()
                time_difference = current_time - LastActivityTime
                return f"Online: {time_difference}"
        else:
            return "User does not exist!"
    except Exception as e:
        print(e)
        return "Unable to calculate time."


async def createUser():

    try:
        json_data = request.json

        if json_data["Latitude"] == "" and json_data["Longitude"] == "":
            print("------", str(json_data))
            print(str(json_data["Latitude"]) + "________" + str(json_data["Longitude"]))
            return make_response(
                jsonify(
                    {"Status": 500, "message": "Latitude and Longitude need require!"}
                ),
                500,
            )
        if json_data["Gender"] not in ["Nam", "Nữ", "Đồng tính nữ", "Đồng tính nam"]:
            print(str(json_data["Gender"]) + " invalid!")
            return make_response(
                jsonify({"Status": 500, "message": "Gender invalid!"}),
                500,
            )
        if not isValidEmail(json_data["Email"]):
            return make_response(
                jsonify({"Status": 400, "message": "Invalid email format."}, 400)
            )
        if not isValidUsername(json_data["Username"]):
            return make_response(
                jsonify(
                    {
                        "Status": 400,
                        "message": "Username can only contain alphanumeric characters and underscores.",
                    }
                ),
                400,
            )
        if json_data["avatarLink"] == "":
            print("please insert avatarLink")
            return make_response(
                jsonify(
                    {
                        "Status": 400,
                        "message": "please insert avatarLink",
                    }
                ),
                400,
            )
        if json_data["LastLoginIP"] == "":
            print("please insert LastLoginIP")
            return make_response(
                jsonify(
                    {
                        "Status": 400,
                        "message": "please insert LastLoginIP - please parse json from http://ip-api.com/json/ for get current IP in front end",
                    }
                ),
                400,
            )
        try:
            userRegister = Users.query.filter(
                or_(
                    Users.Username == json_data["Username"],
                    Users.Email == json_data["Email"],
                )
            ).all()
            if not userRegister:
                user = Users(
                    Username=json_data["Username"],
                    FullName=json_data["FullName"],
                    Email=json_data["Email"],
                    # ma hoa mat khau
                    Password=pbkdf2_sha256.hash(json_data["Password"]),
                    RegistrationIP=request.remote_addr,
                    LastActivityTime=datetime.now(),
                    Role=0,
                    # Chuyen hinh anh thanh byte
                    avatarLink=base64ToByte(json_data["avatarLink"]),
                    Gender=json_data["Gender"],
                    Create_at=datetime.now(),
                )
                db.session.add(user)
                db.session.commit()

                # send email confirm

                await sendVerifyLink(
                    json_data["Latitude"],
                    json_data["Longitude"],
                    json_data["Email"],
                    json_data["Username"],
                )
                return make_response(
                    jsonify(
                        {
                            "Status": 200,
                            "message": "Check your email ",
                        }
                    ),
                    200,
                )
            else:
                return make_response(
                    jsonify(
                        {
                            "Status": 500,
                            "message": "Email or UserName is already taken",
                        }
                    ),
                    500,
                )
        except Exception as e:
            db.session.rollback()
            error = str(e)
            return make_response(
                jsonify(
                    {
                        "Status": 500,
                        "message": "Cant add user to database",
                        "debugMess": error,
                    }
                ),
                500,
            )
    except Exception as e:
        db.session.rollback()
        error = str(e)
        return make_response(
            jsonify(
                {
                    "Status": 500,
                    "message": "Error ",
                    "debugMess": error,
                }
            ),
            500,
        )


def loginUser():
    try:
        json_data = request.json
        user = Users.query.filter(
            or_(
                Users.Username == json_data.get("Username"),
                Users.Email == json_data.get("Username"),
            )
        ).first()
        if user.IsLoggedIn == False and user.Confirmed == True:
            print(json_data.get("Password"))
            print(user.Password)
            if pbkdf2_sha256.verify(json_data.get("Password"), user.Password):
                print(request.remote_addr)
                print(json_data.get("LastLoginIP"))
                user.LastLoginIP = json_data.get("LastLoginIP")
                user.IsLoggedIn = True
                user.LastActivityTime = datetime.now()
                db.session.commit()
                user_id = user.UserID
                username = user.Username
                location_login = Locations.query.filter_by(
                    UserID=user_id, Type="login"
                ).first()
                refresh_token = create_refresh_token(
                    identity={
                        "UserID": user.UserID,
                        "Email": user.Email,
                        "Role": user.Role,
                    }
                )
                access_token = create_access_token(
                    identity={
                        "UserID": user.UserID,
                        "Email": user.Email,
                        "Role": user.Role,
                    }
                )
                refreshtoken = RefreshTokens(
                    UserID=user_id,
                    token=refresh_token,
                    expires_at=datetime.now() + app.config["JWT_REFRESH_TOKEN_EXPIRES"],
                )
                
                db.session.add(refreshtoken)
                db.session.commit()
                if location_login:
                    location_login.Latitude = json_data.get("Latitude")
                    location_login.Longitude = json_data.get("Longitude")
                    location_login.LastLoginIP = json_data.get("LastLoginIP")
                    location_login.UpdateTime = datetime.now()
                else:
                    location_login = Locations(
                        UserID=user_id,
                        Latitude=json_data.get("Latitude"),
                        Longitude=json_data.get("Longitude"),
                        LastLoginIP=json_data.get("LastLoginIP"),
                        Type="login",
                        UpdateTime=datetime.now(),
                    )
                    db.session.add(location_login)

                db.session.commit()
                response = jsonify({"msg": "login successful","refreshtoken": refresh_token, "access_token": access_token})
                set_access_cookies(response, access_token)
                set_refresh_cookies(response, refresh_token)
                return response

        else:
            db.session.rollback()
            return {"status": 400, "message": "user still login"}, 400
    except Exception as e:
        db.session.rollback()
        print(e)
        return make_response(jsonify({"status": 400, "message": str(e)}), 400)


def logout():
    current_user = get_jwt_identity()
    UserID = current_user.get("UserID")
    if request.method == "POST":
        User = Users.query.filter(Users.UserID == UserID).first()
        User.LastActivityTime = datetime.now()
        User.IsLoggedIn = False
        db.session.commit()
        response = jsonify({"logout": True})
        refreshtoken = RefreshTokens.query.filter(
            RefreshTokens.UserID == UserID
        ).first()
        db.session.delete(refreshtoken)
        db.session.commit()
        unset_jwt_cookies(response)
        
    return response


def stateLogin():
    if request.method == "GET":
        try:
            data = []
            all_user = db.session.execute(text("SELECT * FROM Users"))
            for user in all_user:
                data.append(
                    {
                        "UserID": user.UserID,
                        "Username": user.Username,
                        "FullName": user.FullName,
                        "Email": user.Email,
                        "Phone": user.Phone,
                        "Password": user.Password,
                        "Gender": user.Gender,
                        "BirthDate": user.BirthDate.strptime("%Y-%m-%d"),
                        "BirthTime": user.BirthTime.strptime("%H:%M:%S"),
                    }
                )
            return {"status": 200, "Users": data}
        except Exception as e:
            print(e)
            return make_response(
                jsonify({"status": 400, "message": "States has some wrong"}), 400
            )


def cofirmToken():
    if request.method == "GET":
        token = "eyJhbGciOiJSUzI1NiIsImtpZCI6IjgzOGMwNmM2MjA0NmMyZDk0OGFmZmUxMzdkZDUzMTAxMjlmNGQ1ZDEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI5NDYyNjQ1NzQ2MDAtNDVscGxkMWMyZGlic2tzaGw1NWQ3OWxhdWh0ZWY4cmsuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI5NDYyNjQ1NzQ2MDAtNDVscGxkMWMyZGlic2tzaGw1NWQ3OWxhdWh0ZWY4cmsuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTA0Nzc3OTE0MzgyMzQ0NzA2MzMiLCJlbWFpbCI6InBodWNwaHVjMTkxMjAwMUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibmJmIjoxNjkzOTc0MTM1LCJuYW1lIjoiUGjDumMgTmd1eeG7hW4gVsSDbiIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQWNIVHRkMGhEemkzb1p6c3Axekl0UG5NeU9fVnViMGZrWEkyVl9zUEYySGZaYzRJZz1zOTYtYyIsImdpdmVuX25hbWUiOiJQaMO6YyIsImZhbWlseV9uYW1lIjoiTmd1eeG7hW4gVsSDbiIsImxvY2FsZSI6InZpIiwiaWF0IjoxNjkzOTc0NDM1LCJleHAiOjE2OTM5NzgwMzUsImp0aSI6IjQzYzYwOTRlZjhiYTg4MzgwNWYxZDhmYjZjOWJhZmE4MWFmMzI5MzMifQ.DvgHH6Wg5I2BIsSjsJ0wjmP52Bdh6yKzF2RC6pM4pPeqq7efuS3QgJ0zgIYYsH4ooLYIZFmizEZ_5m0PmAcmkXvZGBBwzPy3OKDWgcwMh_5un7zm_vZOGRQBneaHEfHCf7kD9n5IC0u7nJMGLarQYlc_s8Bon82A6oO6d--__2f9vKNmHSE1b9zHB8iTvJ899ia8mgKV5vaQFOzbuU0T68fY8-Mw7CcrvuW3uW3e65bXjxX2rQ3u2kUIWvFF5bIzzDme-2FwACVV9HY_Y9ZkCAqLeZ5fptFila41BafsDVd8DMFJ3FCzYItJ28zOJSQ4iQSANPaKzJ5tUkvesr6kAA"
        secret_key = "devsenior"
        try:
            decoded_token = jwt.decode(token, secret_key, algorithms=["HS256"])
            print(decoded_token)
            return decoded_token
        except jwt.ExpiredSignatureError:
            return "Token hết hạn"
        except jwt.InvalidTokenError:
            return "Token không hợp lệ"


def change():
    if request.method == "PATCH":
        json_data = request.json
        user = Users.query.filter(Users.Password == json_data["Password"]).first()

        if user:
            user.Password = pbkdf2_sha256.hash(json_data["NewPassword"])
            db.session.commit()
            return "Successfully!"
        else:
            return "1"


# reset password
async def forgotPassword():
    try:
        json_data = request.json
        print(json_data)
        if json_data:
            user = Users.query.filter(
                or_(
                    Users.Email == json_data["Email"],
                    Users.Username == json_data["Email"],
                )
            ).first()
            print(user)
            if user:
                msg = Message(
                    "Password reset request",
                    sender=app.config["MAIL_USERNAME"],
                    recipients=[json_data["Email"]],
                )
                random_password = "".join(
                    random.choice(string.ascii_letters + string.digits)
                    for _ in range(8)
                )
                """response = client.emails.send(
                    From="admin@samnotes.online",
                    To=user.Email,
                    Subject="Password reset request!",
                    TextBody="New Password LandInvest is: " + random_password,
                )"""

                await send_mail_to_email(
                    json_data["Email"], random_password, user.Username
                )
                user.Password = pbkdf2_sha256.encrypt(str(random_password))
                db.session.commit()

                return {"status": 200, "message": "Please check your email or spam "}
            else:
                print(json_data)
                return make_response(
                    jsonify({"status": 400, "message": "Account or gmail no exists"}),
                    400,
                )
        else:
            return make_response(
                jsonify({"status": 400, "message": " Load Json data false "}),
                400,
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


"""def forgot(Email):
    try:
        json = request.json
        user = Users.query.filter(Users.Email == Email).first()
        if not user:
            return "Your account does not exist!"
        else:
            user.Password = pbkdf2_sha256.hash(json["Password"])
            db.session.commit()
            return "Updated password successfully!"
    except Exception as e:
        return e
"""

"""def confirmForgotPassword(token):
    try:
        json = s.loads(token, salt=app.config["SECURITY_PASSWORD_SALT"], max_age=600)
        forgot(json)

    except Exception as e:
        print(e)
        return "Your link was expired!!!!. Try again"
    return "Updated password succsess """


def changePassword():
    try:
        current_user = get_jwt_identity()
        CurrentUserID = current_user.get("UserID")

        json = request.json
        user = Users.query.filter(Users.UserID == CurrentUserID).first()
        passHash = pbkdf2_sha256.encrypt(json["Password"])
        print("old pass =>", json["Password"])
        print("send old pass =>", passHash)
        print("user old pass =>", user.Password)
        if pbkdf2_sha256.verify(json.get("Password"), user.Password):
            # if pbkdf2_sha256.verify(passHash, user.Password):
            new_password = pbkdf2_sha256.encrypt(json["NewPassword"])
            # user.Password = new_password
            user.Password = new_password
            db.session.commit()
            # print(user.BirthDate.strftime("%Y-%m-%d"))
            # print(user.BirthTime.strftime("%H:%M:%S"))
            return make_response(
                {
                    "UserID": CurrentUserID,
                    "Username": user.Username,
                    "FullName": user.FullName,
                    "Email": user.Email,
                    "Phone": user.Phone,
                    "Password": json["NewPassword"],
                    "Gender": user.Gender,
                    # "BirthDate": str(user.BirthDate),
                    # "BirthTime": str(user.BirthTime),
                    "RegistrationIP": user.RegistrationIP,
                    "LastLoginIP": user.LastLoginIP,
                    "LastActivityTime": user.LastActivityTime,
                    "IsLoggedIn": user.IsLoggedIn,
                    "Message": "Change Password Sucessfully!",
                },
                200,
            )

        else:
            return {
                "status": 200,
                "message": "Change Gender successfully",
            }, 200
    except Exception as e:
        error = str(e)
        return make_response(
            jsonify(
                {
                    "Status": 500,
                    "message": "Cant Change Password",
                    "debugMess": error,
                }
            ),
            500,
        )


def confirmEmail(token):
    try:
        json = s.loads(token, salt=app.config["SECURITY_PASSWORD_SALT"], max_age=600)
        change(json)
        return "Updated password succsess "
    except Exception as e:
        print(e)
        return "Your link was expired!!!!."


# Anonymous
def changeAnonymous(id):
    try:
        if request.method == "PATCH":
            User = Users.query.filter(Users.UserID == id).first()
            if User.IsAnonymous == False:
                User.IsAnonymous = True
                db.session.commit()
                return {
                    "UserID": user.UserID,
                    "Username": user.Username,
                    "FullName": user.FullName,
                    "Email": user.Email,
                    "Phone": user.Phone,
                    "Password": user.Password,
                    "Gender": user.Gender,
                    "BirthDate": user.BirthDate.strftime("%Y-%m-%d"),
                    "BirthTime": user.BirthTime.strftime("%H:%M:%S"),
                    "RegistrationIP": user.RegistrationIP,
                    "LastLoginIP": user.LastLoginIP,
                    "LastActivityTime": user.LastActivityTime,
                    "IsLoggedIn": user.IsLoggedIn,
                    "IsAnonymous": False,
                    "Message": "Change Sucessfully!",
                }
            else:
                User.IsAnonymous = False
                db.session.commit()
                return {
                    "UserID": user.UserID,
                    "Username": user.Username,
                    "FullName": user.FullName,
                    "Email": user.Email,
                    "Phone": user.Phone,
                    "Password": user.Password,
                    "Gender": user.Gender,
                    "BirthDate": user.BirthDate.strftime("%Y-%m-%d"),
                    "BirthTime": user.BirthTime.strftime("%H:%M:%S"),
                    "RegistrationIP": user.RegistrationIP,
                    "LastLoginIP": user.LastLoginIP,
                    "LastActivityTime": user.LastActivityTime,
                    "IsLoggedIn": user.IsLoggedIn,
                    "IsAnonymous": True,
                }
    except Exception as e:
        print(e)
        return "An error occurred"


# Gender
def changeGender(id):
    try:
        if request.method == "PATCH":
            json_data = request.json
            gender = json_data.get("Gender")

            allowed_genders = ["Nam", "Nữ", "Đồng tính nam", "Đồng tính nữ"]
            if gender in allowed_genders:
                user = Users.query.filter(Users.UserID == id).first()

                if user:
                    user.Gender = gender
                    db.session.commit()
                    return {
                        "UserID": user.UserID,
                        "Username": user.Username,
                        "FullName": user.FullName,
                        "Email": user.Email,
                        "Phone": user.Phone,
                        "Password": user.Password,
                        "Gender": gender,
                        # "BirthDate": user.BirthDate.strftime("%Y-%m-%d"),
                        # "BirthTime": user.BirthTime.strftime("%H:%M:%S"),
                        "RegistrationIP": user.RegistrationIP,
                        "LastLoginIP": user.LastLoginIP,
                        "LastActivityTime": user.LastActivityTime,
                        "IsLoggedIn": user.IsLoggedIn,
                        "IsAnonymous": user.IsAnonymous,
                        "Message": "Change Sucessfully!",
                    }
                else:
                    return "User not found"
            else:
                return "Invalid gender value. Allowed values are: male, female, lesbian, gay man"
    except Exception as e:
        print(e)
        return {
            "status": 200,
            "message": "Cant Change Gender",
        }, 200


# Change Phone Number
def changePhone():
    try:
        if request.method == "PATCH":
            current_user = get_jwt_identity()
            CurrentUserID = current_user.get("UserID")
            json_data = request.json
            phone = json_data.get("Phone")
            user = Users.query.filter(Users.UserID == CurrentUserID).first()
            if user:
                if phone:
                    user.Phone = phone
                    db.session.commit()
                    return {
                        "UserID": user.UserID,
                        "Username": user.Username,
                        "FullName": user.FullName,
                        "Email": user.Email,
                        "Phone": phone,
                        "Password": user.Password,
                        "Gender": user.Gender,
                        # "BirthDate": user.BirthDate.strftime("%Y-%m-%d"),
                        # "BirthTime": user.BirthTime.strftime("%H:%M:%S"),
                        "RegistrationIP": user.RegistrationIP,
                        "LastLoginIP": user.LastLoginIP,
                        "LastActivityTime": user.LastActivityTime,
                        "IsLoggedIn": user.IsLoggedIn,
                        "Message": "Change Sucessfully!",
                    }
                else:
                    return "Invalid or missing Phone field in JSON data", 400
            else:
                return "User not found", 404
    except Exception as e:
        print(e)
        return "An error occurred", 500


# Change Birth Date
from flask import request, jsonify
from sqlalchemy.exc import SQLAlchemyError


def changeBirthDate(id):
    try:
        if request.method == "PATCH":
            json_data = request.json
            # birth_date = (json_data.get("BirthDate"), ("%Y-%m-%d"),)
            birth_date = datetime.strptime(json_data.get("BirthDate"), "%Y-%m-%d")
            user = Users.query.filter(Users.UserID == id).first()

            if user:
                if birth_date:
                    user.BirthDate = birth_date
                    db.session.commit()
                    return jsonify(
                        {
                            "UserID": user.UserID,
                            "Username": user.Username,
                            "FullName": user.FullName,
                            "Email": user.Email,
                            "Phone": user.Phone,
                            "Password": user.Password,
                            "Gender": user.Gender,
                            "BirthDate": (
                                user.BirthDate.strftime("%Y-%m-%d")
                                if user.BirthDate
                                else None
                            ),
                            "BirthTime": (
                                user.BirthTime.strftime("%H:%M:%S")
                                if user.BirthTime
                                else None
                            ),
                            "RegistrationIP": user.RegistrationIP,
                            "LastLoginIP": user.LastLoginIP,
                            "LastActivityTime": user.LastActivityTime,
                            "IsLoggedIn": user.IsLoggedIn,
                            "Message": "Change Sucessfully!",
                        }
                    )
                else:
                    return (
                        jsonify(
                            {"error": "Invalid or missing BirthDate field in JSON data"}
                        ),
                        400,
                    )
            else:
                return jsonify({"error": "User not found"}), 404
    except SQLAlchemyError as e:
        db.session.rollback()
        return jsonify({"error": "Database error: " + str(e)}), 500
    except Exception as e:
        return jsonify({"error": "An error occurred: " + str(e)}), 500


# Change Birth Time
def changeBirthTime(id):
    try:
        if request.method == "PATCH":
            # birth_date = datetime.strptime(json_data.get("BirthDate"), "%Y-%m-%d")
            # user = Users.query.filter(Users.UserID == id).first()
            json_data = request.json
            birth_time = datetime.strptime(json_data.get("BirthTime"), ("%H:%M:%S"))
            user = Users.query.filter(Users.UserID == id).first()

            if user:
                if birth_time:
                    user.BirthTime = birth_time
                    db.session.commit()
                    return {
                        "UserID": user.UserID,
                        "Username": user.Username,
                        "FullName": user.FullName,
                        "Email": user.Email,
                        "Phone": user.Phone,
                        "Password": user.Password,
                        "Gender": user.Gender,
                        "BirthDate": (
                            user.BirthDate.strftime("%Y-%m-%d")
                            if user.BirthDate
                            else None
                        ),
                        "BirthTime": (
                            user.BirthTime.strftime("%H:%M:%S")
                            if user.BirthTime
                            else None
                        ),
                        # "BirthDate": user.BirthDate.strftime("%Y-%m-%d"),
                        # "BirthTime": birth_time,
                        "RegistrationIP": user.RegistrationIP,
                        "LastLoginIP": user.LastLoginIP,
                        "LastActivityTime": user.LastActivityTime,
                        "IsLoggedIn": user.IsLoggedIn,
                        "Message": "Change Sucessfully!",
                    }
                else:
                    return "Invalid or missing BirthTime field in JSON data", 400
            else:
                return "User not found", 404
    except Exception as e:
        print(e)
        return "An error occurred", 500


def checkStatus(id):
    try:
        if request.method == "GET":
            user = Users.query.filter(Users.UserID == id).first()
            if user:
                return {"UserID": user.UserID, "IsLoggedIn": user.IsLoggedIn}
            else:
                return "User does not exits!"
    except Exception as e:
        print(e)
        return "An error occured", 500


from datetime import datetime

# ... (import các module cần thiết)


def updateUser(id):
    ProvinceID = ""
    if request.method == "PUT":
        try:
            data_json = request.json
            user = Users.query.get(id)
            print(str(user))
            if user:
                if "FullName" in data_json:
                    user.FullName = data_json["FullName"]
                    print("__FullName___" + user.FullName)
                if "Email" in data_json:
                    print("__Email___" + user.Email)
                    user.Email = data_json["Email"]
                if "Phone" in data_json:
                    print("__Phone___" + user.Email)
                    user.Phone = data_json["Phone"]
                if "Gender" in data_json:
                    user.Gender = data_json["Gender"]
                if "BirthDate" in data_json:
                    user.BirthDate = datetime.strptime(
                        data_json["BirthDate"], "%Y-%m-%d"
                    )
                if "BirthTime" in data_json:
                    user.BirthTime = datetime.strptime(
                        data_json["BirthTime"], "%H:%M:%S"
                    )
                if "Bio" in data_json:
                    user.Bio = data_json["Bio"]
                if "CurrentAdd" in data_json:
                    user.CurrentAdd = data_json["CurrentAdd"]
                if "BirthPlace" in data_json:
                    user.BirthPlace = data_json["BirthPlace"]
                if "ProvinceID" in data_json:
                    ProvinceID_int = int(data_json["ProvinceID"])
                    user.ProvinceID = ProvinceID_int
                    ProvinceID = data_json["ProvinceID"]
                    print("__ProvinceID___" + str(user.ProvinceID))
                print("USERID____CHUAN_BI_UPDATE " + str(user.UserID))
                db.session.commit()
                new_user = {
                    "UserID": user.UserID,
                    "Username": user.Username,
                    "FullName": user.FullName,
                    "Email": user.Email,
                    "Phone": user.Phone,
                    "Password": user.Password,
                    "Gender": user.Gender,
                    "BirthDate": user.BirthDate.strftime("%Y-%m-%d"),
                    "BirthTime": user.BirthTime.strftime("%H:%M:%S"),
                    "RegistrationIP": user.RegistrationIP,
                    "LastLoginIP": user.LastLoginIP,
                    "LastActivityTime": user.LastActivityTime,
                    "IsLoggedIn": user.IsLoggedIn,
                    "Bio": user.Bio,
                    "BirthPlace": user.BirthPlace,
                    "CurrentAdd": user.CurrentAdd,
                    "avatarLink": byteToString(user.avatarLink),
                }
                return make_response(
                    jsonify(
                        {
                            "status": 200,
                            "Message": "User updated successfully",
                            "data": new_user,
                        },
                    )
                )
            else:
                return make_response(
                    jsonify({"status": 404, "message": "User not found"}), 404
                )
        except Exception as e:
            print(e)
            error = "Bad request " + str(e) + "__ProvinceID___" + str(ProvinceID)
            return make_response(jsonify({"status": 400, "message": error}), 400)


def UploadZoningImg(id):
    try:
        json_data = request.json
        if json_data["Imglat"] == "" and json_data["Imglng"] == "":
            print("------", str(json_data))
            print(str(json_data["Imglat"]) + "________" + str(json_data["Imglng"]))
            return make_response(
                jsonify({"Status": 500, "message": "Imglat and Imglng need require!"}),
                500,
            )
        if json_data["DistrictID"] == "":
            return make_response(
                jsonify({"Status": 500, "message": "DistrictID need require!"}),
                500,
            )
        if json_data["ZoningUserImg"] == "":
            return make_response(
                jsonify({"Status": 500, "message": "ZoningUserImg need require!"}),
                500,
            )
        if json_data["Imgwidth"] == "":
            return make_response(
                jsonify({"Status": 500, "message": "Imgwidth need require!"}),
                500,
            )
        if json_data["Imgheight"] == "":
            return make_response(
                jsonify({"Status": 500, "message": "Imgheight need require!"}),
                500,
            )
        try:
            user = Users.query.filter(Users.UserID == id).first()
            if user:
                Imgupload = ZoningImg_UserUpload(
                    DistrictID=json_data.get("DistrictID"),
                    UserID=user.UserID,
                    ZoningUserImg=json_data.get("ZoningUserImg"),
                    Description=json_data.get("Description"),
                    Imglat=json_data.get("Imglat"),
                    Imglng=json_data.get("Imglng"),
                    Imgwidth=json_data.get("Imgwidth"),
                    Imgheight=json_data.get("Imgheight"),
                )
                db.session.add(Imgupload)
                db.session.commit()
                return {
                    "status": 200,
                    "message": "Upload Image successfully",
                }, 200
        except Exception as e:
            error = str(e)
            return make_response(
                jsonify(
                    {
                        "Status": 500,
                        "message": "Cant add user to database",
                        "debugMess": error,
                    }
                ),
                500,
            )

    except Exception as e:
        db.session.rollback()
        print(f"Error: {e}")
        error = str(e)
        return make_response(
            jsonify(
                {
                    "Status": 500,
                    "message": "Pls Fill all input",
                    "debugMess": error,
                }
            ),
            500,
        )
