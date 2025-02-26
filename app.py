from flask import Flask, render_template
import csv

app = Flask(__name__)

def load_data():
    data = []
    with open('data.csv', newline='') as csvfile:
        reader = csv.reader(csvfile)
        next(reader)  # Skip header
        for row in reader:
            data.append({
                'name': row[0],
                'link1': row[1],
                'link2': row[2],
                'link3': row[3]
            })
    return data

@app.route('/')
def index():
    resources = load_data()
    return render_template('index.html', resources=resources)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
