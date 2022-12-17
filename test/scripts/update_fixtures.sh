#!/bin/bash

# Get worldstate fixture.
wget https://api.warframestat.us/pc -O ./test/fixtures/worldstate.json

# Get synthesis targets fixture.
wget https://api.warframestat.us/synthtargets -O ./test/fixtures/synthtargets.json

# Get warframe-items fixture.
wget https://github.com/WFCD/warframe-items/raw/master/data/json/All.json -O ./test/fixtures/warframe-items.json

# Get the seperate parts of the worldstate for individual test
worldstate_paths=("alerts" "news" "events" "sortie" "syndicateMissions" "fissures" "globalUpgrades" 
    "flashSales" "invasions" "voidTrader" "dailyDeals" "simaris" "conclaveChallenges" 
    "persistentEnemies" "earthCycle" "cetusCycle" "cambionCycle" "weeklyChallenges" "vallisCycle" 
    "nightwave" "kuva" "arbitration" "sentientOutpostes" "steelPath" "vaultTrader" "archonHunt") 

for path in ${worldstate_paths[@]}
do
    wget -O test/fixtures/$path.json https://api.warframestat.us/pc/$path 
done