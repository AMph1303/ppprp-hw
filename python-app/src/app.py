from flask import Flask
import os
import requests


app = Flask(__name__)


@app.route('/run/', methods=['GET'])
def run():
    response = requests.get(f"http://httpbin.org/anything")
    data = response.json()
    return (data)


if __name__ == "__main__":
    port = int(os.environ.get('FLASK_PORT', 8080))
    app.run(host='0.0.0.0', port=port)
