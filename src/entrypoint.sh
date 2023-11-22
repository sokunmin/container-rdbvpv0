#!/bin/sh
set -ex

# Start gunicorn, listening on port 500, access log to stdout
#exec gunicorn -w 4 -b '0.0.0.0:5003' --access-logfile=- 'app:app'


#git clone https://github.com/poe-platform/server-bot-quick-start
cd server-bot-quick-start
pip install -r requirements.txt
modal deploy main.py