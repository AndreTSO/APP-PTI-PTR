from sys import prefix
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="teste"
)

prefix = "ptr_"
mycursor = mydb.cursor()