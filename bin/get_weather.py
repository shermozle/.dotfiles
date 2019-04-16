#!/usr/bin/python3
# -*- coding: utf-8 -*-

import json
import urllib.request
with urllib.request.urlopen('http://reg.bom.gov.au/fwo/IDN60901/IDN60901.94767.json') as response:
   weather = json.loads(response.read())

# weather = json.loads(urllib3.urlopen("http://reg.bom.gov.au/fwo/IDN60901/IDN60901.94767.json").read())
print(weather["observations"]["data"][0]["air_temp"], end="")
print("°C ", end="")
print(weather["observations"]["data"][0]["rel_hum"], end="")
print("%")