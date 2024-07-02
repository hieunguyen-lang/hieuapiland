import base64
from source import db
from flask import request, make_response, jsonify
from sqlalchemy import or_, and_,union, select, intersect
from flask_jwt_extended import create_access_token, jwt_required, get_jwt_identity
from source.main.model.LandAuctions import LandAuctions
from source.main.model.LandAuctionCategories import LandAuctionCategories
from source.main.model.AuctionImgs import AuctionImgs
from source.main.model.AuctionVideos import AuctionVideos
from source.main.model.provinces import Provinces
from source.main.model.districts import Districts
from source.main.function.forum import viewPost, deletePost
from sqlalchemy import func, and_, or_, not_
from datetime import datetime
from sqlalchemy.sql import label, text
def is_valid_datetime(datetime_str, format="%Y-%m-%dT%H:%M:%S"):
    try:
        datetime.strptime(datetime_str, format)
        return True
    except ValueError:
        return False
def addAuction():
    try:
        current_user = get_jwt_identity()
        user_role = current_user.get('Role')
        current_userID = current_user.get('UserID')
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
                "LandAuctionCategoryID",
                "Title",
                "DistrictID",
                "DescriptionAuction",
                "OpenPrice",
                "StartTime",
                "EndTime",
                "AuctionAddress",
                "Latitude",
                "Longitude",
                "Images",
                "Videos",
            ]
            for field in required_fields:
                if field not in json_data:
                    return make_response(
                        jsonify(
                            {"status": 400, "message": f"Missing required field: {field}"}
                        ),
                        400,
                    )
            if is_valid_datetime(json_data["StartTime"]) and is_valid_datetime(json_data["EndTime"]):
                #image = base64.b64decode(json_data["avatarLink"])
                landauctions = LandAuctions(
                    LandAuctionCategoryID = json_data["LandAuctionCategoryID"],
                    UserID = current_userID,
                    Title = json_data["Title"],
                    Description= json_data["DescriptionAuction"],
                    DistrictID = json_data["DistrictID"],
                    OpenPrice = json_data["OpenPrice"],
                    StartTime = json_data["StartTime"],
                    EndTime = json_data["EndTime"],
                    AuctionAddress = json_data["AuctionAddress"],
                    Latitude = json_data["Latitude"],
                    Longitude = json_data["Longitude"],
                    CreateAt = datetime.now()
                )
                db.session.add(landauctions)
                db.session.commit()
                for item in json_data["Images"]:
                    auctionImg = AuctionImgs(
                        LandAuctionID = landauctions.LandAuctionID,
                        Descritption = item["DescritptionImg"],
                        Image = item["Imageurl"]
                    )
                    db.session.add(auctionImg)
                    db.session.commit()
                for item in json_data["Videos"]:
                    auctionvideo = AuctionVideos(
                        LandAuctionID = landauctions.LandAuctionID,
                        Descritption = item["DescritptionVideo"],
                        Video = item["Videourl"]
                    )
                    db.session.add(auctionvideo)
                    db.session.commit()
                return make_response(
                    jsonify({"status": 200, "message": "Add Auction Successfully!"}), 200
                )
            else:
                return make_response(
                    jsonify({"status": 500, "message": "Start or End time did not match format '%Y-%m-%dT%H:%M:%S' !"}), 500
                )
    except Exception as e:
        db.session.rollback()
        print(e)
        return make_response(jsonify({"status": 400, "message": str(e)}), 400)

def deleteAuction(LandAuctionID):
    try:
        current_user = get_jwt_identity()
        user_role = current_user.get('Role')
        if user_role == 1:
            auction_need_delete = LandAuctions.query.filter(LandAuctions.LandAuctionID == LandAuctionID).first()
            if not auction_need_delete:
                return make_response(jsonify({"status": 400, "message": "Missing 'auction_need_delete' field"}), 400)
            if auction_need_delete:
                db.session.delete(auction_need_delete)
                db.session.commit()
                return make_response(
                    jsonify({"Status": 200, "Message": "The group deleted!"}), 200
                )
            else:
                return make_response(
                    jsonify({"Status": 404, "Message": "The group not found!"}), 404
                )

    except Exception as e:
        db.session.rollback()
        return make_response(
            jsonify(
                {"status": 500, "message": "An error occurred while deleting the post"}
            ),
            500,
        )
def updateAuction(LandAuctionID):
    try:

        current_user = get_jwt_identity()
        user_role = current_user.get('Role')
        current_userID = current_user.get('UserID')
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
                "LandAuctionCategoryID",
                "Title",
                "DistrictID",
                "DescriptionAuction",
                "OpenPrice",
                "StartTime",
                "EndTime",
                "AuctionAddress",
                "Latitude",
                "Longitude",
            ]
            for field in required_fields:
                if field not in json_data:
                    return make_response(
                        jsonify(
                            {"status": 400, "message": f"Missing required field: {field}"}
                        ),
                        400,
                    )
            landauctions = LandAuctions.query.filter(LandAuctions.LandAuctionID == LandAuctionID).first()      
            if is_valid_datetime(json_data["StartTime"]) and is_valid_datetime(json_data["EndTime"]):
                #image = base64.b64decode(json_data["avatarLink"])
                
                landauctions.LandAuctionCategoryID = json_data["LandAuctionCategoryID"],
                landauctions.UserID = current_userID,
                landauctions.Title = json_data["Title"],
                landauctions.Description= json_data["DescriptionAuction"],
                landauctions.DistrictID = json_data["DistrictID"],
                landauctions.OpenPrice = json_data["OpenPrice"],
                landauctions.StartTime = json_data["StartTime"],
                landauctions.EndTime = json_data["EndTime"],
                landauctions.AuctionAddress = json_data["AuctionAddress"],
                landauctions.Latitude = json_data["Latitude"],
                landauctions.Longitude = json_data["Longitude"],
                landauctions.CreateAt = datetime.now()
                db.session.commit()

                return make_response(
                    jsonify({"status": 200, "message": "upadate Auction Successfully!"}), 200
                )
            else:
                return make_response(
                    jsonify({"status": 500, "message": "Start or End time did not match format '%Y-%m-%dT%H:%M:%S' !"}), 500
                )
    
    except Exception as e:
        db.session.rollback()
        print(e)
        return make_response(
            jsonify({"status": 500, "message": "An error occurred"}), 500, 
        )

def deleteAuctionimg(AuctionImgID):
    group_img_delete = AuctionImgs.query.filter(AuctionImgs.AuctionImgID == AuctionImgID).first()
    if group_img_delete:               
        db.session.delete(group_img_delete)
        db.session.commit
        return make_response(
                        jsonify(
                            {
                                'status': 200, 
                                'message': 'Delete successfully!'
                            }
                        ),200)
    else:
        db.session.rollback()
        return make_response(
                        jsonify(
                            {
                                'status': 500, 
                                'message': 'Error!'
                            }
                        ),500)
        
def filterAuctionbyid(LandAuctionID):
    landauction = LandAuctions.query.filter(LandAuctions.LandAuctionID == LandAuctionID).first()
    landauctionimg = AuctionImgs.query.filter(AuctionImgs.LandAuctionID == LandAuctionID).all()
    landauctionvid = AuctionVideos.query.filter(AuctionVideos.LandAuctionID == LandAuctionID).all()
    landauctionjson = []
    listimgs = []
    listvideos = []
    for item in landauctionimg:
        result = dict()
        result["AuctionImgID"] = item.AuctionImgID
        result["LandAuctionID"] = item.LandAuctionID
        result["Descritption"] = item.Descritption
        result["Image"] = item.Image
        listimgs.append(result)
        
    for item in landauctionvid:
        result = dict()
        result["AuctionImgID"] = item.AuctionImgID
        result["LandAuctionID"] = item.LandAuctionID
        result["Descritption"] = item.Descritption
        result["Video"] = item.Video
        listvideos.append(result)
    result = dict()
    result["LandAuctionID"] = landauction.LandAuctionID
    result["DistrictID"] = landauction.DistrictID
    result["LandAuctionCategoryID"] = landauction.LandAuctionCategoryID
    result["Description"] = landauction.Description
    result["OpenPrice"] = landauction.OpenPrice
    result["AuctionAddress"] = landauction.AuctionAddress
    result["Title"] = landauction.Title
    result["RegistrationStartTime"] = landauction.RegistrationStartTime.strftime('%Y-%m-%dT%H:%M:%S')
    result["RegistrationEndTime"] = landauction.RegistrationEndTime.strftime('%Y-%m-%dT%H:%M:%S')
    result["DepositPaymentStartTime"] = landauction.RegistrationStartTime.strftime('%Y-%m-%dT%H:%M:%S')
    result["DepositPaymentEndTime"] = landauction.RegistrationEndTime.strftime('%Y-%m-%dT%H:%M:%S')
    result["EventSchedule"] = landauction.EventSchedule.strftime('%Y-%m-%dT%H:%M:%S')
    result["Latitude"] = landauction.Latitude
    result["Longitude"] = landauction.Longitude
    result["DepositPrice"] = landauction.DepositPrice
    result["NamePropertyOwner"] = landauction.NamePropertyOwner
    result["NameProperty"] = landauction.NameProperty
    result["AddressProperty"] = landauction.AddressProperty
    result["AuctionUrl"] = landauction.AuctionUrl
    result["NameAuctionHouse"] = landauction.NameAuctionHouse
    result["AddressAuctionHouse"] = landauction.AddressAuctionHouse
    result["AddressPropertyOwner"] = landauction.AddressPropertyOwner
    result["PhoneNumberAuctionHouse"] = landauction.PhoneNumberAuctionHouse
    result["Images"] = listimgs
    result["Videos"] = listvideos
    landauctionjson.append(result)
    
    return landauctionjson

def listAuction():
    listlandauction = LandAuctions.query.all()
    listimgs = []
    ListJsonLandAuctions = []
    for item in listlandauction:
        listimgs =[]
        landauctionimg = AuctionImgs.query.filter(AuctionImgs.LandAuctionID == item.LandAuctionID).all()
        lenarray = len(landauctionimg)
        if lenarray == 0:
            
            listimgs = [
            {"Image": "http://127.0.0.1:2345/api/group/image/groupimgid.jpeg"},
            {"Image": "http://127.0.0.1:2345/api/group/image/groupimgid.jpeg"},
            {"Image": "http://127.0.0.1:2345/api/group/image/groupimgid.jpeg"}
        ]
        else:
            for item in landauctionimg:
                result1 = dict()
                result1["AuctionImgID"] = item.AuctionImgID
                result1["LandAuctionID"] = item.LandAuctionID
                result1["Descritption"] = item.Descritption
                result1["Image"] = item.Image
                listimgs.append(result)
        result = dict()
        result["LandAuctionID"] = item.LandAuctionID
        result["DistrictID"] = item.DistrictID
        result["LandAuctionCategoryID"] = item.LandAuctionCategoryID
        result["Description"] = item.Description
        result["OpenPrice"] = item.OpenPrice
        result["AuctionAddress"] = item.AuctionAddress
        result["Title"] = item.Title
        result["RegistrationStartTime"] = item.RegistrationStartTime.strftime('%Y-%m-%dT%H:%M:%S')
        result["RegistrationEndTime"] = item.RegistrationEndTime.strftime('%Y-%m-%dT%H:%M:%S')
        result["DepositPaymentStartTime"] = item.RegistrationStartTime.strftime('%Y-%m-%dT%H:%M:%S')
        result["DepositPaymentEndTime"] = item.RegistrationEndTime.strftime('%Y-%m-%dT%H:%M:%S')
        result["EventSchedule"] = item.EventSchedule.strftime('%Y-%m-%dT%H:%M:%S')
        result["Latitude"] = item.Latitude
        result["Longitude"] = item.Longitude
        result["DepositPrice"] = item.DepositPrice
        result["AuctionUrl"] = item.AuctionUrl
        result["Images"] = listimgs
        ListJsonLandAuctions.append(result)
        
        # Return the result as a JSON response
    return ListJsonLandAuctions
def filterAuctionbyprovince():
    try:
        name = request.args.get("ProvinceName")
        if name:
            province =  Provinces.query.filter(Provinces.ProvinceName == name).first()
            district = Districts.query.filter(Districts.ProvinceID == province.ProvinceID).all()
            if Districts:
                ListJsonLandAuctions= []
                for item in district:
                    LandAuctionsList = LandAuctions.query.filter(LandAuctions.DistrictID == item.DistrictID).all()
                    for item2 in LandAuctionsList:
                        result = dict()
                        result["LandAuctionID"] = item2.LandAuctionID
                        result["DistrictID"] = item2.DistrictID
                        result["LandAuctionCategoryID"] = item2.LandAuctionCategoryID
                        result["Description"] = item2.Description
                        result["OpenPrice"] = item2.OpenPrice
                        result["AuctionAddress"] = item2.AuctionAddress
                        result["Title"] = item2.Title
                        result["StartTime"] = item2.StartTime.strftime('%Y-%m-%dT%H:%M:%S')
                        result["EndTime"] = item2.EndTime.strftime('%Y-%m-%dT%H:%M:%S')
                        result["Latitude"] = item.Latitude
                        result["Longitude"] = item.Longitude
                        ListJsonLandAuctions.append(result)
                        # Return the result as a JSON response
                return ListJsonLandAuctions
            else:
                return make_response(
                        jsonify(
                            {
                                'status': 404, 
                                'message': 'Has no data !'
                            }
                        ),404)
        else:
            return make_response(
                    jsonify(
                        {
                            'status': 404, 
                            'message': 'An error occurred !'
                         }
                    ),404)
    except Exception as e:
        print(e)
        return make_response(
                    jsonify(
                        {
                            'status': 500, 
                            'message': 'An error occurred while adding provinces!'
                         }
                    ),500)
        
def result(conflicting_auctions):
    print("check loix")
    listjosnauctions =[]
    for item2 in conflicting_auctions:
        listimgs =[]
        landauctionimg = AuctionImgs.query.filter(AuctionImgs.LandAuctionID == item2.LandAuctionID).all()
        lenarray = len(landauctionimg)
        if lenarray == 0:
            
            listimgs = [
            {"Image": "http://127.0.0.1:2345/api/group/image/groupimgid.jpeg"},
            {"Image": "http://127.0.0.1:2345/api/group/image/groupimgid.jpeg"},
            {"Image": "http://127.0.0.1:2345/api/group/image/groupimgid.jpeg"}
        ]
        result = dict()
        result["LandAuctionID"] = item2.LandAuctionID
        result["DistrictID"] = item2.DistrictID
        result["LandAuctionCategoryID"] = item2.LandAuctionCategoryID
        result["Description"] = item2.Description
        result["OpenPrice"] = item2.OpenPrice
        result["AuctionAddress"] = item2.AuctionAddress
        result["Title"] = item2.Title
        result["RegistrationStartTime"] = item2.RegistrationStartTime.strftime('%Y-%m-%dT%H:%M:%S')
        result["RegistrationEndTime"] = item2.RegistrationEndTime.strftime('%Y-%m-%dT%H:%M:%S')
        result["DepositPaymentStartTime"] = item2.RegistrationStartTime.strftime('%Y-%m-%dT%H:%M:%S')
        result["DepositPaymentEndTime"] = item2.RegistrationEndTime.strftime('%Y-%m-%dT%H:%M:%S')
        result["EventSchedule"] = item2.EventSchedule.strftime('%Y-%m-%dT%H:%M:%S')
        result["Latitude"] = item2.Latitude
        result["Longitude"] = item2.Longitude
        result["DepositPrice"] = item2.DepositPrice
        result["AuctionUrl"] = item2.AuctionUrl
        result["Images"] = listimgs
        listjosnauctions.append(result)
    return listjosnauctions
def filterAuction():
    try:
        listjosnauctions = []
        if not request.json:
            return make_response(
                jsonify(
                        {"status": 400, "message": "Bad Request - No JSON data provided"}
                    ),
                    400,
                )
        if request.json:    
            json_data = request.json
            if json_data["StartTime"]:
                try:
                    StartTime = datetime.strptime(json_data["StartTime"], "%Y-%m-%dT%H:%M:%S")
                    print(StartTime)
                except ValueError as e:
                    print(f"Error parsing StartTime: {e}")
                    # Xử lý lỗi khi chuỗi không phù hợp với định dạng
                    StartTime = None
            if json_data["EndTime"]:
                try:
                    EndTime = datetime.strptime(json_data["EndTime"], "%Y-%m-%dT%H:%M:%S")
                    print(EndTime)
                except ValueError as e:
                    print(f"Error parsing EndTime: {e}")
                    EndTime =None 
            

            if StartTime and EndTime and json_data["Province"] and json_data["District"] and json_data["StartPrice"] and["EndPrice"]:
                if StartTime < EndTime:      
                    conflicting_auctions = LandAuctions.query.filter(
                        and_(
                            or_(
                                and_(LandAuctions.RegistrationStartTime <= StartTime, LandAuctions.RegistrationEndTime >= StartTime),
                                and_(LandAuctions.RegistrationStartTime <= EndTime, LandAuctions.RegistrationEndTime >= EndTime),
                                and_(LandAuctions.RegistrationStartTime >= StartTime, LandAuctions.RegistrationEndTime <= EndTime)
                            ),
                        func.lower(LandAuctions.AuctionAddress).like(func.lower(f'%{json_data["Province"]}%')),
                        func.lower(LandAuctions.AuctionAddress).like(func.lower(f'%{json_data["District"]}%')),
                        LandAuctions.OpenPrice >= float(json_data["StartPrice"]),
                        LandAuctions.OpenPrice <= float(json_data["EndPrice"]) 
                        )
                    ).all()
                    
                    listjosnauctions = result(conflicting_auctions)
                    
            query1_conditions = None
            if  StartTime  and EndTime:
                
                query1_conditions = or_(
                                and_(LandAuctions.RegistrationStartTime <= StartTime, LandAuctions.RegistrationEndTime >= StartTime),
                                and_(LandAuctions.RegistrationStartTime <= EndTime, LandAuctions.RegistrationEndTime >= EndTime),
                                and_(LandAuctions.RegistrationStartTime >= StartTime, LandAuctions.RegistrationEndTime <= EndTime)
                            )
                boolenvalue1 = 0
            elif  StartTime is None and EndTime is None:
                boolenvalue1 = 1
                
            query2_conditions = None
            if  json_data["Province"]:
                query2_conditions = func.lower(LandAuctions.AuctionAddress).like(func.lower(f'%{json_data["Province"]}%'))
                boolenvalue2 = 0
            elif json_data["Province"] is None:
                boolenvalue2 = 1
                
            query3_conditions = None
            if  json_data["District"] is None:
                boolenvalue3 = 1
                
            elif json_data["District"]:
                query3_conditions = and_(
                    func.lower(LandAuctions.AuctionAddress).like(func.lower(f'%{json_data["Province"]}%')),
                    func.lower(LandAuctions.AuctionAddress).like(func.lower(f'%{json_data["District"]}%'))
                )
                boolenvalue3 = 0
                
            query4_conditions = None     
            if  json_data["StartPrice"] is None and  json_data["EndPrice"] is None:
                boolenvalue4 = 1
            elif json_data["StartPrice"]  and  json_data["EndPrice"]:
                query4_conditions = and_(
                        LandAuctions.OpenPrice >= float(json_data["StartPrice"]),
                        LandAuctions.OpenPrice <= float(json_data["EndPrice"]) 
                        )
                boolenvalue4 = 0
            # Xây dựng các câu truy vấn từ các điều kiện và sử dụng subquery()
            print(query1_conditions)
            print(query2_conditions)
            print(query3_conditions)
            print(query4_conditions)
            
            # Xây dựng các câu truy vấn từ các điều kiện
            
            if boolenvalue1 == 0: 
                query1 = select(LandAuctions).where(query1_conditions) 
            else: 

                query1 = select(LandAuctions)
             
            if boolenvalue2 == 0:
                query2 = select(LandAuctions).where(query2_conditions)
            else:

                query2 = select(LandAuctions)
             
            if boolenvalue3 == 0:
                query3 = select(LandAuctions).where(query3_conditions)
            else:

                query3 = select(LandAuctions)
            
            if boolenvalue4 == 0:
                query4 = select(LandAuctions).where(query4_conditions)
                
            else:

                query4 = select(LandAuctions)

            # Kết hợp các câu truy vấn lại với nhau bằng union_all
            intersect_query = intersect( query1,query2, query3, query4 )
            # Thực thi câu truy vấn và lấy kết quả
            listresult = db.session.execute(intersect_query).fetchall()

            # Xử lý kết quả nếu cần thiết
            listjosnauctions = result(listresult)

            # In kết quả hoặc làm gì đó khác với kết quả đã lấy được
            return(listjosnauctions)
    except Exception as e:
        print(e)
        err =str(e)
        return make_response(
                    jsonify(
                            {
                                'status': 500, 
                                'message': 'An error occurred while filter!',
                                'error': err
                            }
                        ),500)