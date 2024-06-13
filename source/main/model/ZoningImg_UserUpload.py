from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from source import db
class ZoningImg_UserUpload(db.Model):
    __tablename__ = 'ZoningImg_UserUpload'
    ZoningImgID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    DistrictID = db.Column(db.Integer, db.ForeignKey('Districts.DistrictID'))
    UserID = db.Column(db.Integer, db.ForeignKey('Users.UserID'))
    ZoningUserImg = db.Column(db.String(600), nullable=False)
    Imglat = db.Column(db.String(30), nullable=False)
    Imglng = db.Column(db.String(30), nullable=False)
    Imgwidth = db.Column(db.String(30), nullable=False)
    Imgheight = db.Column(db.String(30), nullable=False)
    Description = db.Column(db.String(250), nullable=False)