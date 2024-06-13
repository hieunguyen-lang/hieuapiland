from flask import jsonify, request, make_response
from source.main.model.districts import Districts
from source import db
def viewDistrict():
    try:
        name = request.args.get("name")
        
        # Query the database to get all instances of TinhThanhPhoMl
        query = Districts.query
        
        # If 'name' parameter is provided, filter the query
        if name:
            query = query.filter(Districts.DistrictName == name)
        
        # Execute the query
        Districtslist = query.all()
        ListJsonDistricts = []
        # Construct a list of dictionaries containing the desired information
        #result = [{"name": item.TenTinhThanhPho, "id": item.TinhThanhPhoID} for item in tinh_thanh_pho_list]
        for item in Districtslist:
            result = dict()
            result["DistrictID"] = item.DistrictID
            result["DistrictName"] = item.DistrictName
            result["ProvinceID"] = item.ProvinceID
            ListJsonDistricts.append(result)
        # Return the result as a JSON response
        return ListJsonDistricts
    except Exception as e:
        print(e)
        return make_response(jsonify({'status': 500, 'message': 'An error occurred while list district!'}), 500)
def viewDistrictsofProvince():
    try:
        id = request.args.get("id")
        query = Districts.query
        if id:
            query = query.filter(Districts.ProvinceID == id)
        DistrictsList = query.all()
        ListJsonDistricts = []
        for item in DistrictsList:
            result = dict()
            result["DistrictID"] = item.DistrictID
            result["DistrictName"] = item.DistrictName
            result["ProvinceID"] = item.ProvinceID
            ListJsonDistricts.append(result)
        return ListJsonDistricts
    except Exception as e:
        print(e)
        return make_response(jsonify({'status': 500, 'message': 'An error occurred while list district!'}), 500)