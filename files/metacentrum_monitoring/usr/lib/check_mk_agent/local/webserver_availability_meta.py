#!/usr/bin/env python3

import requests


url = "http://127.0.0.1"

status = 2
status_txt = "ERROR"

try:
    res = requests.get(url, allow_redirects=False)
    if res.status_code == 200 or res.status_code == 301:
        status = 0
        status_txt = "OK"
except requests.RequestException:
    pass

print(str(status) + " webserver_availability - " + status_txt)
