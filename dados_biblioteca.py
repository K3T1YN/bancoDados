from flask import Flask, request, jsonify
import mysql.connector

app = Flask(__name__)

db = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "labinfo",
    database = "biblioteca"
)

@app.route("/search", methods=["GET"])
def search():
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT *FROM livro")
    objetos =  cursor.fetchall()
    cursor.close()

    return jsonify(objetos)

if __name__=="__main__":
    app.run()


@app.route("/searchAutor", methods=["GET"])
def searchAutor():
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT *FROM autor")
    objetos =  cursor.fetchall()
    cursor.close()

    return jsonify(objetos)

if __name__=="__main__":
    app.run()


