import os
from dotenv import load_dotenv
from sqlalchemy import create_engine, text
from flask import Flask, render_template

# Load the environment variables from the .env file
load_dotenv()

# Database connection settings from environment variables
DB_HOST = os.getenv("DB_HOST")
DB_DATABASE = os.getenv("DB_DATABASE")
DB_USERNAME = os.getenv("DB_USERNAME")
DB_PASSWORD = os.getenv("DB_PASSWORD")

connect_args = {'ssl': {'fake_flag_to_enable_tls': True}}
connection_string = f'mysql+pymysql://{DB_USERNAME}:{DB_PASSWORD}@{DB_HOST}/{DB_DATABASE}'
engine = create_engine(connection_string, connect_args=connect_args)

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/patients')
def patients():
    with engine.connect() as connection:
        query = text('SELECT * FROM patients')
        result = connection.execute(query)
        db_data = result.fetchall()
    return render_template('patients.html', data1=db_data)

@app.route('/providers')
def providers():
    with engine.connect() as connection:
        query = text('SELECT * FROM providers')
        result = connection.execute(query)
        db_data = result.fetchall()
    return render_template('providers.html', data2=db_data)

@app.route('/appointments')
def appointments():
    with engine.connect() as connection:
        query = text('SELECT * FROM appointments')
        result = connection.execute(query)
        db_data = result.fetchall()
    return render_template('appointments.html', data3=db_data)

if __name__ == '__main__':
    app.run(debug=True)


