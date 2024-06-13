from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from source import db

class Districts(db.Model):
    __tablename__ = 'Districts'
    DistrictID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    ProvinceID = db.Column(db.Integer, db.ForeignKey('Provinces.ProvinceID'))
    DistrictName = db.Column(db.String(50), unique=True, nullable=False)