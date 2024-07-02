from source import app
from source.main.function.LandAuctions import *

#Admin add new Land Auction
app.add_url_rule('/api/landauctions/add_auction', methods=['POST'], view_func=jwt_required()(addAuction))

#Admin delete  Land Auction
app.add_url_rule('/api/landauctions/delete_auction/<int:LandAuctionID>', methods=['DELETE'], view_func=jwt_required()(deleteAuction))

#Admin UPDATE  Land Auction
app.add_url_rule('/api/landauctions/update_auction/<int:LandAuctionID>', methods=['PATCH'], view_func=jwt_required()(updateAuction))

#Admin delete 1 image of Land Auction 
app.add_url_rule('/api/landauctions/delete_img/<int:AuctionImgID>', methods=['DELETE'], view_func=jwt_required()(deleteAuctionimg))

#View Land Auction by LandAuctionID
app.add_url_rule('/api/landauctions/view/<int:LandAuctionID>', methods=['GET'], view_func=filterAuctionbyid)

#View List Land Auction 
app.add_url_rule('/api/landauctions/view_list', methods=['GET'], view_func=listAuction)

#Filter Land Auction by Province
app.add_url_rule('/api/landauctions/filter_auction/province', methods=['GET'], view_func=filterAuctionbyprovince)

#Filter Land Auction by time
app.add_url_rule('/api/landauctions/filter_auction', methods=['POST'], view_func=filterAuction)

