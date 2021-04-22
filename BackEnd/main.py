from typing import Optional
from fastapi import FastAPI 
import mysql.connector
import json

app = FastAPI()

@app.get("/accessoires")
async def getAccessoires():
    mydb = mysql.connector.connect(host="localhost", user="root", password="",database="gfaphonesdb")
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM accessoire")
    myresult = mycursor.fetchall()
    y=json.dumps(myresult, default=str)
    return y

@app.get("/products")
async def getPhones():
    mydb = mysql.connector.connect(host="localhost", user="root", password="",database="gfaphonesdb")
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM smartphone")
    myresult = mycursor.fetchall()
    y=json.dumps(myresult, default=str)
    return y

@app.get("/promos")
async def getPromos():
    mydb = mysql.connector.connect(host="localhost", user="root", password="",database="gfaphonesdb")
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM promo")
    myresult = mycursor.fetchall()
    y=json.dumps(myresult, default=str)
    return y