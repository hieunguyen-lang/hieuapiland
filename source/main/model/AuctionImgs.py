from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from source import db


class AuctionImgs(db.Model):
    __tablename__ = "AuctionImgs"
    AuctionImgID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    LandAuctionID = db.Column(db.Integer, db.ForeignKey("LandAuctions.LandAuctionID"))
    Descritption = db.Column(db.String(250), unique=True, nullable=True)
    Image = db.Column(db.String(250), unique=True, nullable=True)