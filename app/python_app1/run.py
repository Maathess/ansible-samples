from flask import (Flask, render_template, send_from_directory, request, redirect, url_for, jsonify)
import pymysql.cursors
import sys

# appending the directory of mod.py
# in the sys.path list


import run

app = Flask(__name__, static_folder='/myvol')
conn = pymysql.connect(host='localhost',
                                 user='admin',
                                 password='admin',
                                 database='devops')

cursor = conn.cursor()

@app.route("/app1")
def start():
    cursor.execute("SELECT * FROM esgi_s1")
    data = cursor.fetchall()
    return render_template("index.html", data=data)

#@app.route('/api', methods=['GET'])
#def sender():
#    cursor.execute("SELECT * FROM esgi_s1")
#    data = cursor.fetchall()
#    return jsonify(data)

class Matiere :
    def __init__(self, idesgi, matiere, heure,description):
        self.idesgi = idesgi
        self.matiere = matiere,
        self.heure = heure
        self.description = description

    def to_dict(self):
        return {"idesgi": self.idesgi, "matiere": self.matiere, "heure":self.heure, "description":self.description}

@app.route('/load', methods=['GET'])
def loadMySQL() :
    # Connect to the database

    with conn :
        with conn.cursor() as cursor :
            # Read a single record
            cursor.execute("SELECT * FROM esgi_s1")
            result = cursor.fetchall()
            print(result)
            connection.commit()

    response = {
        "cours":[]
    }
    for res in result:
        matiere = Matiere(res[1], res[2], res[3],res[4]).to_dict()
        response["cours"].append(matiere)

    return app.response_class(response=json.dumps(response), status=200, mimetype='application/json')

@app.route('/load2', methods=['GET'])
def loadMySQL2() :

    response = {
        "matieres":[{"idesgi": 13, "matiere":"azure", "heure":8, "description":"projet pomona"},{"idesgi": 14, "matiere":"devops", "heure":14, "description":"projet ansible"}]
    }

    return app.response_class(response=json.dumps(response), status=200, mimetype='application/json')


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
