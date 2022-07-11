import json

import requests
from flask import (Flask, render_template, send_from_directory)
from elasticsearch import Elasticsearch, helpers

app = Flask(__name__, static_folder='/myvol')


@app.route("/app2", methods=['GET'])
def start():
    client = Elasticsearch("http://localhost:9200")

    print(client.info())
    return 'Hello World!'
    
    
@app.route('/load',methods=['GET'])
def dataFromSQLtoES():
    es = Elasticsearch(
        "http://localhost:9200")
    data = requests.get("http://localhost:5001/load")
    matieres_dict = data.json()

    for i, matiere in enumerate(matieres_dict["cours"]):
        print(matiere)
        resp = es.index(index="cours", id=i,body=matiere)
        print(resp['result'])
    return "OK"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5001)
