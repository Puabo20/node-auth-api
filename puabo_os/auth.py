from fastapi import APIRouter, HTTPException, status, Depends
from pydantic import BaseModel
from passlib.hash import bcrypt
from sqlalchemy.orm import Session
from models import User
from database import get_db

router = APIRouter()

class LoginRequest(BaseModel):
    email: str
    password: str

@router.post("/login")
def login(data: LoginRequest, db: Session = Depends(get_db)):
    user = db.query(User).filter(User.email == data.email.lower()).first()
    if not user or not bcrypt.verify(data.password, user.password):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid credentials"
        )
    return {"message": "Login successful", "user_id": user.id}
