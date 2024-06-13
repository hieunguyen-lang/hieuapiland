from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from source import db

class RefreshTokens(db.Model):
    __tablename__ = 'RefreshTokens'
    RefreshTokenID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    UserID = db.Column(db.Integer, db.ForeignKey('Users.UserID'), nullable=False)
    token = db.Column(db.String(256), nullable=False)
    expires_at = db.Column(db.DateTime, nullable=False)