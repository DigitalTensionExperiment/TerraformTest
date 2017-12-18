from flask import Flask
from flask import jsonify

app = Flask(__name__)

@app.route('/hello', methods=['GET'])
def get_tasks():
    print "Inside flaskHello:get_tasks..."
    return jsonify({"result": "hello world"})