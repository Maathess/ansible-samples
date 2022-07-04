import json

import requests
from flask import (Flask, render_template, send_from_directory)
from elasticsearch import Elasticsearch

app = Flask(__name__, static_folder='/myvol')

@app.route("/load", methods=['GET'])
def load(url):
    response = requests.get(url)
    data = response.json()
    es = Elasticsearch([{'host': 'localhost', 'port': '9200'}])
    es.index(index='myindex', ignore=400, doc_type='docket', id=i, body=json.loads(data))
    return data

@app.route("/app2", methods=['GET'])
def start():

    return render_template("index.html", jsonfile=load("http://192.168.0.45:5000/api"))

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5001)