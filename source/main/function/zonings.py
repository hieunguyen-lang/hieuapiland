from flask import jsonify, request, make_response, send_from_directory
from source.main.model.zonings import Zonings
from source.main.model.districts import Districts
from source import db
from source import app
def viewZonings():
    try:
        name = request.args.get("name")
        
        # Query the database to get all instances of TinhThanhPhoMl
        query = Zonings.query
        
        # If 'name' parameter is provided, filter the query
        if name:
            query = query.filter(Zonings.Description == name)
        
        # Execute the query
        Zoningslist = query.all()
        ListJsonZonings= []
        # Construct a list of dictionaries containing the desired information

        for item in Zoningslist:
            result = dict()
            result["ZoningID"] = item.ZoningID
            result["DistrictID"] = item.DistrictID
            result["ZoningImg"] = item.ZoningImg
            result["Description"] = item.Description
            ListJsonZonings.append(result)
        # Return the result as a JSON response
        return ListJsonZonings
    except Exception as e:
        print(e)
        return make_response(jsonify({'status': 500, 'message': 'An error occurred while adding provinces!'}), 500)
# xem tat ca quy hoach cua
def viewZoningsofDistrict():
    try:
        name = request.args.get("name")
        Zoningsquery = Zonings.query
        Districtsquery = Districts.query
        if name:
            NameDistrict = Districtsquery.filter(Districts.DistrictName == name).all()
            for item in NameDistrict:
                DistrictID = item.DistrictID
                break
            Zoningsquery =  Zoningsquery.filter(Zonings.DistrictID == DistrictID)
        

        ZoningsList = Zoningsquery.all()
        ListJsonDZonings = []
        for item in ZoningsList:
            result = dict()
            result["ZoningID"] = item.ZoningID
            result["DistrictID"] = item.DistrictID
            result["ZoningImg"] = item.ZoningImg
            result["Description"] = item.Description
            result["Imglat"] = item.Imglat
            result["Imglng"] = item.Imglng
            result["Imgwidth"] = item.Imgwidth
            result["Imgheight"] = item.Imgheight
            result["Path"] = item.Path
            ListJsonDZonings.append(result)
        return ListJsonDZonings
    except Exception as e:
        print(e)
        return make_response(jsonify({'status': 500, 'message': 'An error occurred while list Zoning Img!'}), 500)

def get_image(path):
    return send_from_directory(app.config['Image_FOLDER'][0], path)