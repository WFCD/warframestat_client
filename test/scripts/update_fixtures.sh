#!/bin/bash

# Get worldstate fixture.
wget https://api.warframestat.us/pc -O ./test/fixtures/worldstate.json

# Get warframe-items fixture.
wget https://github.com/WFCD/warframe-items/raw/master/data/json/All.json -O ./test/fixtures/warframe-items.json