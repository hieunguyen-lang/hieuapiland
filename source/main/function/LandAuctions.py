import base64
from source import db
from flask import request, make_response, jsonify
from sqlalchemy import or_, and_
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
def filterAuctionbytime():
    try:
        if not request.json:
            return make_response(
                jsonify(
                        {"status": 400, "message": "Bad Request - No JSON data provided"}
                    ),
                    400,
                )
        if request.json:    
            json_data = request.json
            required_fields = [
                "StartTime",
                "EndTime", 
            ]
            for field in required_fields:
                if field not in json_data:
                    return make_response(
                        jsonify(
                            {"status": 400, "message": f"Missing required field: {field}"}
                        ),
                        400,
                    )
        conflicting_auctions = LandAuctions.query.filter(
            or_(
                and_(LandAuctions.StartTime <= json_data["StartTime"], LandAuctions.EndTime >= json_data["EndTime"]),
                and_(LandAuctions.StartTime <= json_data["StartTime"], LandAuctions.EndTime >= json_data["EndTime"]),
                and_(LandAuctions.StartTime >= json_data["StartTime"], LandAuctions.EndTime <= json_data["EndTime"])
            )
        ).subquery()

        
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