from flask import Flask, render_template, jsonify
import random
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    return render_template('index.html')

@app.route('/flip')
def flip_coin():
    result = random.choice(['Heads', 'Tails'])
    return jsonify({'result': result})

if __name__ == '__main__':
    # Get port from environment variable (for deployment platforms)
    port = int(os.environ.get('PORT', 5000))
    # Only use debug mode in development
    debug = os.environ.get('FLASK_ENV') == 'development'
    app.run(debug=debug, host='0.0.0.0', port=port)

# For direct deployment without gunicorn
if os.environ.get('RENDER'):
    app.run(host='0.0.0.0', port=int(os.environ.get('PORT', 5000)))
