from flask import (abort, Flask, Response, render_template, request, jsonify, json as fjson, make_response)

app = Flask(__name__)

@app.route('/home')
def home():
    return "You Are Home!!"

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=8080)
