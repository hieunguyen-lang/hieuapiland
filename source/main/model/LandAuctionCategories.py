from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from source import db


class LandAuctionCategories(db.Model):
    __tablename__ = "LandAuctionCategories"
    LandAuctionCategoryID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    CategoryName = db.Column(db.String(50), unique=True, nullable=False)
    Descritption = db.Column(db.String(250), unique=True, nullable=True)
    