#!/bin/bash

# Get worldstate fixture.
wget https://api.warframestat.us/pc -O ./test/fixtures/worldstate.json

# Get warframe-items json.
wget https://github.com/WFCD/warframe-items/raw/master/data/json/All.json -O ./test/fixtures/warframe-items.json

# Get warframe-items enemy json.
wget https://raw.githubusercontent.com/WFCD/warframe-items/master/data/json/Enemy.json -O ./test/fixtures/enemy.json