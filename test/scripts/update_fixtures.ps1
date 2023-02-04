$baseUri = 'https://api.warframestat.us'

# # Get the seperate parts of the worldstate for individual test
$fixtureUris = @(
    @(Uri = "$baseUri/pc" OutFile = 'worldstate.json'),
    @(Uri = "$baseUri/synthtargets" OutFile = 'synthtargets.json'),
    @(Uri = "$baseUri/pc/alerts" OutFile = 'alerts.json'),
    @(Uri = "$baseUri/pc/news" OutFile = 'news.json'),
    @(Uri = "$baseUri/pc/events" OutFile = 'events.json'),
    @(Uri = "$baseUri/pc/sortie" OutFile = 'sortie.json'),
    @(Uri = "$baseUri/pc/syndicateMissions" OutFile = 'syndicateMissions.json'), 
    @(Uri = "$baseUri/pc/fissures" OutFile = 'fissures.json'),
    @(Uri = "$baseUri/pc/globalUpgrades" OutFile = 'globalUpgrade.json'),
    @(Uri = "$baseUri/pc/flashSales" OutFile = 'flashSales.json'),
    @(Uri = "$baseUri/pc/invasions" OutFile = 'invasions.json'),
    @(Uri = "$baseUri/pc/voidTrader" OutFile = 'voidTrader.json'),
    @(Uri = "$baseUri/pc/dailyDeals" OutFile = 'dailyDeals.json'),
    @(Uri = "$baseUri/pc/simaris" OutFile = 'simaris.json'),
    @(Uri = "$baseUri/pc/conclaveChallenges" OutFile = 'conclaveChallenges.json'),
    @(Uri = "$baseUri/pc/persistentEnemies" OutFile = 'persistentEnemies.json'),
    @(Uri = "$baseUri/pc/earthCycle" OutFile = 'earthCycle.json'), 
    @(Uri = "$baseUri/pc/cetusCycle" OutFile = 'cetusCycle.json'),
    @(Uri = "$baseUri/pc/cambionCycle" OutFile = 'cambionCycle.json'),
    @(Uri = "$baseUri/pc/weeklyChallenges" OutFile = 'weeklyChallenges.json'),
    @(Uri = "$baseUri/pc/vallisCycle" OutFile = 'vallisCycle.json'),
    @(Uri = "$baseUri/pc/nightwave" OutFile = 'nightwave.json'),
    @(Uri = "$baseUri/pc/kuva" OutFile = 'kuva.json'),
    @(Uri = "$baseUri/pc/arbitration" OutFile = 'arbitration.json'),
    @(Uri = "$baseUri/pc/sentientOutposts" OutFile = 'sentientOutposts.json'), 
    @(Uri = "$baseUri/pc/steelPath" OutFile = 'steelPath.json'),
    @(Uri = "$baseUri/pc/vaultTrader" OutFile = 'vaultTrader.json'), 
    @(Uri = "$baseUri/pc/archonHunt" OutFile = 'archonHunt.json'), 
    @(Uri = "$baseUri/pc/constructionProgress" OutFile = 'constructionProgress.json'),
    @(Uri = "$baseUri/items" OutFile = 'items.json')
) 



$jobs = @()

foreach ($fixture in $fixtureUris) {
    $jobs += Start-Job -Name $fixture.OutFile -ScriptBlock {
        $params = $using:file
        Invoke-WebRequest @params
    }
}

Write-Host "Downloads started..."
Wait-Job -Job $jobs

foreach ($job in $jobs) {
    Receive-Job -Job $job
}