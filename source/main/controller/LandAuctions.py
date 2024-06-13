from source import app
from source.main.function.LandAuctions import *

#Admin add new Land Auction
app.add_url_rule('/api/landauctions/add_auction', methods=['POST'], view_func=jwt_required()(addAuction))

#Admin delete  Land Auction
app.add_url_rule('/api/landauctions/delete_auction/<int:LandAuctionID>', methods=['DELETE'], view_func=jwt_required()(deleteAuction))

#Filter Land Auction by Province
app.add_url_rule('/api/landauctions/filter_auction/province', methods=['GET'], view_func=filterAuctionbyprovince)

#Filter Land Auction by time
app.add_url_rule('/api/landauctions/filter_auction/time', methods=['GET'], view_func=filterAuctionbytime)