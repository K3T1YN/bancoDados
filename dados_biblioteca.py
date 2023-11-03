from flask import Flask, requeset, jsonify
import mysql

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

