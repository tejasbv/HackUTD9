from flask import Flask, request, jsonify
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


@app.route('/register', methods=['GET'])
def register():
    email = request.args["email"]
    password = request.args["password"]
    name = request.args["name"]

    if email in users.keys():
        return jsonify({"auth": False})
    users[email] = {"name": name, "email": email, "password": password}
    pickle.dump(users, open('users.p', 'wb'))
    return jsonify({"auth": True})


if __name__ == "__main__":

    path = Path("user.p")
    if path.is_file():
        users = pickle.load(open('users.p', 'rb'))
    app.run(debug=True)
