#!/bin/bash

# Updates worldstate fixture
wget https://api.warframestat.us/pc -O ./test/fixtures/worldstate.json

# Updates warframe-items fixture
wget https://github.com/WFCD/warframe-items/raw/master/data/json/All.json -O ./test/fixtures/warframe-items.json


