from flask import Flask, render_template

app = Flask(__name__, static_folder='static')

@app.route('/')
def hello():
    return 'Hola desde Python3+Flask - Ana Acuna\n'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)