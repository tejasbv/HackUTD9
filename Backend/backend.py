from flask import Flask, request,jsonify
from pathlib import Path
import requests
import json
import re
import pickle
from flask_cors import CORS


app = Flask(__name__)
CORS(app)
users = {}


@app.route('/login', methods=['GET'])
def login():
    email = request.args["email"]
    password = request.args["password"]
    if email in users.keys():
        print(users[email]["password"])
        if users[email]["password"] == password:
            print("returning true")
            return jsonify({"auth": True, "data": users[email]})

    print("returning false")
    return jsonify({"auth": False})






if __name__ == "__main__":

    path = Path("user.p")
    if path.is_file():
        users = pickle.load(open('users.p', 'rb'))
    app.run(debug=True)
