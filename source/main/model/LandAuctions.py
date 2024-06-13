from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from source import db


class LandAuctions(db.Model):
    __tablename__ = "LandAuctions"
    LandAuctionID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    DistrictID = db.Column(db.Integer, db.ForeignKey("Districts.DistrictID"))
    UserID = db.Column(db.Integer, db.ForeignKey("Users.UserID"))
    LandAuctionCategoryID = db.Column(db.Integer, db.ForeignKey("LandAuctionCategories.LandAuctionCategoryID"))
    Title = db.Column(db.String(50), nullable=False)
    Description = db.Column(db.String(250), nullable=True)
    OpenPrice = db.Column(db.Float, nullable=False)
    StartTime = db.Column(db.DateTime, default=db.func.current_timestamp(), nullable=True)
    EndTime = db.Column(db.DateTime, default=db.func.current_timestamp(), nullable=True)
    AuctionAddress = db.Column(db.String(250), unique=True, nullable=True)
    Latitude = db.Column(db.Float, nullable=True)
    Longitude = db.Column(db.Float, nullable=True)
    CreateAt = db.Column(db.DateTime, default=db.func.current_timestamp())
