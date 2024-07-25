from flask import Flask
import os # library for seperating system calls

PORT = os.getenv('PORT', 8080) # get env

app = Flask(__name__)
@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

if __name__ == '__main__':
    app.run(host="0.0.0", port=PORT) # pass port as an arg

# flask --app flash-app run
# for this 'export PORT=9090'
# to unset the 9090 port, type 'unset PORT' in terminal