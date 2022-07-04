from flask import (Flask, render_template, send_from_directory, request, redirect, url_for, jsonify)
from flaskext.mysql import MySQL
import sys

# appending the directory of mod.py
# in the sys.path list
sys.path.append('C:/Users/Maathess/Desktop/esgi/4a/S2/DevOps/projet/ansible-samples/app/python_app2')

import run

app = Flask(__name__, static_folder='/myvol')
mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'root'
app.config['MYSQL_DATABASE_DB'] = 'devops'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

conn = mysql.connect()
cursor =conn.cursor()

@app.route("/app1")
def start():
    cursor.execute("SELECT * FROM esgi_s1")
    data = cursor.fetchall()
    return render_template("index.html", data=data)

@app.route('/api', methods=['GET'])
def sender():
    cursor.execute("SELECT * FROM esgi_s1")
    data = cursor.fetchall()
    return jsonify(data)




if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
    run.load("http://192.168.0.45:5000/api")