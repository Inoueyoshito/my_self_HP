from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/blog')
def blog():
    return render_template('blog.html')

@app.route('/to_know')
def to_know():
    return render_template("to_know.html")

if __name__ == '__main__':
    app.run(debug=True)