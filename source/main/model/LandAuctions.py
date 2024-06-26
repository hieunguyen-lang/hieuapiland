from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from source import db


class LandAuctions(db.Model):
    __tablename__ = "LandAuctions"
    LandAuctionID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    DistrictID = db.Column(db.Integer, db.ForeignKey("Districts.DistrictID"))
    UserID = db.Column(db.Integer, db.ForeignKey("Users.UserID"))
    LandAuctionCategoryID = db.Column(db.Integer, db.ForeignKey("LandAuctionCategories.LandAuctionCategoryID"))
    Title = db.Column(db.String(1000), nullable=False)
    Description = db.Column(db.String(1000), nullable=True)
    OpenPrice = db.Column(db.Float, nullable=False)
    DepositPrice = db.Column(db.String(50), nullable=True)
    RegistrationStartTime = db.Column(db.DateTime,  nullable=True)
    RegistrationEndTime = db.Column(db.DateTime,  nullable=True)
    DepositPaymentStartTime = db.Column(db.DateTime,  nullable=True)
    DepositPaymentEndTime = db.Column(db.DateTime,  nullable=True)
    AuctionAddress = db.Column(db.String(500), unique=True, nullable=True)
    Latitude = db.Column(db.Float, nullable=True)
    Longitude = db.Column(db.Float, nullable=True)
    CreateAt = db.Column(db.DateTime, default=db.func.current_timestamp())
    AuctionUrl = db.Column(db.String(1000), unique=True, nullable=True)
    NamePropertyOwner = db.Column(db.String(200), nullable=True)
    NameProperty = db.Column(db.String(200), nullable=True)
    AddressProperty = db.Column(db.String(200), nullable=True)
    AddressPropertyOwner = db.Column(db.String(200), nullable=True)
    NameAuctionHouse = db.Column(db.String(200), nullable=True)
    AddressAuctionHouse = db.Column(db.String(200), nullable=True)
    PhoneNumberAuctionHouse = db.Column(db.String(20), nullable=True)
    EventSchedule = db.Column(db.DateTime, nullable=True)