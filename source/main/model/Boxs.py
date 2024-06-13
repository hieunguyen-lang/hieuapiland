from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from source import db


class Boxs(db.Model):
    __tablename__ = "Boxs"
    BoxID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    UserID = db.Column(db.Integer, db.ForeignKey("Users.UserID"))
    BoxName = db.Column(db.String(50), unique=True, nullable=False)
    CreateAt = db.Column(db.DateTime, default=db.func.current_timestamp())
    Description = db.Column(db.String(250), unique=True, nullable=False)
    avatarLink = db.Column(db.String(250), unique=True, nullable=True)
