#!/bin/bash

# Updates worldstate fixture
wget https://api.warframestat.us/pc -O ./test/fixtures/worldstate.json

# Updates warframe-items fixture
wget https://github.com/WFCD/warframe-items/raw/master/data/json/All.json -O ./test/fixtures/warframe-items.json

# Updates the seperate parts of the worldstate for individual test
worldstate_paths=("alerts" "news" "events" "sortie" "syndicateMissions" "fissures" "globalUpgrades" 
    "flashSales" "invasions" "voidTrader" "dailyDeals" "simaris" "conclaveChallenges" 
    "persistentEnemies" "earthCycle" "cetusCycle" "cambionCycle" "weeklyChallenges" "vallisCycle" 
    "nightwave" "kuva" "arbitration" "sentientOutpostes" "steelPath" "vaultTrader" "archonHunt") 

for path in ${worldstate_paths[@]}
do
    wget -O test/fixtures/$path.json https://api.warframestat.us/pc/$path 
done