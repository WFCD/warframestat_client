import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'worldstate.g.dart';

/// {@template worldstate}
/// The full translated Warframe Worldstate
/// {@endtemplate}
@JsonSerializable()
class Worldstate extends Equatable {
  /// {@macro worldstate}
  const Worldstate({
    required this.timestamp,
    required this.alerts,
    required this.arbitration,
    required this.weeklyChallenges,
    required this.archonHunt,
    required this.cambionCycle,
    required this.syndicateMissions,
    required this.cetusCycle,
    required this.conclaveChallenges,
    required this.constructionProgress,
    required this.dailyDeals,
    required this.earthCycle,
    required this.events,
    required this.fissures,
    required this.flashSales,
    required this.globalUpgrades,
    required this.invasions,
    required this.kuva,
    required this.news,
    required this.nightwave,
    @Deprecated('See PersistentEnemy.') required this.persistentEnemies,
    required this.sortie,
    required this.vallisCycle,
    required this.voidTraders,
    @Deprecated('See Worldstate.voidTrader') required this.voidTrader,
    required this.vaultTrader,
    required this.sentientOutposts,
    required this.simaris,
    required this.steelPath,
    required this.zarimanCycle,
    @Deprecated('DE removed dark sectors.') required this.darkSectors,
  });

  /// Creates a Worldstate from Json map
  factory Worldstate.fromJson(Map<String, dynamic> json) {
    return _$WorldstateFromJson(json);
  }

  /// The time that the worldstate was last generated.
  final DateTime timestamp;

  /// List of active alerts.
  final List<Alert> alerts;

  /// Currently active arbitration.
  final Arbitration? arbitration;

  /// Conclave weekly challenges data.
  final List<ConclaveChallenge> weeklyChallenges;

  /// Currently active Archon hunt.
  final Sortie archonHunt;

  /// Cambion cycle data.
  final CambionCycle cambionCycle;

  /// List of syndicate missions and bounties.
  final List<SyndicateMission> syndicateMissions;

  /// Cetus cycle data.
  final CetusCycle cetusCycle;

  /// Conclave challenges.
  final List<ConclaveChallenge> conclaveChallenges;

  /// Invasion constrcution progress data.
  final ConstructionProgress constructionProgress;

  /// Darvo's daily "deals".
  final List<DailyDeal> dailyDeals;

  /// Earth cycle data.
  final EarthCycle earthCycle;

  /// Currently active Warframe events.
  final List<WorldEvent> events;

  /// Currently active fissures
  final List<Fissure> fissures;

  /// List of flash sales.
  final List<FlashSale> flashSales;

  /// List of global upgrades.
  final List<GlobalUpgrade> globalUpgrades;

  /// List of invasions.
  final List<Invasion> invasions;

  /// Kuva data.
  final List<Kuva> kuva;

  /// List of Warframe news.
  final List<News> news;

  /// Nightwave data.
  @JsonKey(includeIfNull: false)
  final Nightwave? nightwave;

  /// Acoloyte data.
  @Deprecated('See PersistentEnemy')
  final List<PersistentEnemy> persistentEnemies;

  /// Sortie data.
  final Sortie sortie;

  /// Vallis cycle data.
  final VallisCycle vallisCycle;

  /// Void trader data.
  @Deprecated(
    'Since multiple instances of the void trader can exist during Tennocon'
    ' events, Worldstate.voidTraders is better to use.',
  )
  final Trader voidTrader;

  /// List void trader instances.
  final List<Trader> voidTraders;

  /// Vault trader data.
  final Trader vaultTrader;

  /// Sentient outposts data.
  final SentientOutpost? sentientOutposts;

  /// Data on previous simaris target.
  final Simaris simaris;

  /// Steel path data
  final SteelPath steelPath;

  /// Zariman cycle data.
  final ZarimanCycle zarimanCycle;

  /// Raw data for darkSectors.
  ///
  /// Exposed for test only and will be removed when warframe-worldstate-parser
  /// removes it.
  @Deprecated('''
      DE deprecated darkSectors so this is here for test until parser removes it
      ''')
  final List<dynamic> darkSectors;

  /// Creates a Json map from a Worldstate
  Map<String, dynamic> toJson() => _$WorldstateToJson(this);

  @override
  List<Object?> get props => [
        alerts,
        arbitration,
        weeklyChallenges,
        archonHunt,
        cambionCycle,
        syndicateMissions,
        cetusCycle,
        conclaveChallenges,
        constructionProgress,
        dailyDeals,
        earthCycle,
        events,
        fissures,
        flashSales,
        globalUpgrades,
        invasions,
        kuva,
        news,
        nightwave,
        // ignore: deprecated_member_use_from_same_package
        persistentEnemies,
        sortie,
        vallisCycle,
        // ignore: deprecated_member_use_from_same_package
        voidTrader,
        voidTraders,
        vaultTrader,
        sentientOutposts,
        simaris,
        steelPath,
        // ignore: deprecated_member_use_from_same_package
        darkSectors,
      ];
}
