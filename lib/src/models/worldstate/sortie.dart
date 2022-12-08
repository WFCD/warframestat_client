import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'sortie.g.dart';

/// {@template sortie}
/// A base class for Sortie type objects.
/// {@endtemplate}
@JsonSerializable()
class Sortie extends WorldstateObject {
  /// {@macro sortie}
  const Sortie({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.startString,
    required this.active,
    required this.rewardPool,
    required this.variants,
    required this.missions,
    required this.boss,
    required this.faction,
    required this.factionKey,
    required this.expired,
    required this.eta,
  });

  /// Creates a [Sortie] from Json map
  factory Sortie.fromJson(Map<String, dynamic> json) {
    return _$SortieFromJson(json);
  }

  /// The time the sortie started.
  final String startString;

  /// Whether or not the sortie is active during the object's creation.
  final bool active;

  /// The sortie reward pool.
  final String rewardPool;

  /// Missions variants associated with Sorties.
  final List<Variant> variants;

  /// Archon Missions.
  final List<Mission> missions;

  /// The boss of the sortie.
  final String boss;

  /// Faction the player will be fighting against (localized).
  final String faction;

  /// Faction the player will be fighting against.
  @JsonKey(includeIfNull: false)
  final String? factionKey;

  /// Whether or not the sortie is expired during the object's creation.
  final bool expired;

  ///
  final String eta;

  /// Creates a Json map from a [Sortie].
  Map<String, dynamic> toJson() => _$SortieToJson(this);

  @override
  List<Object?> get props => super.props
    ..addAll([
      startString,
      active,
      rewardPool,
      variants,
      missions,
      boss,
      faction,
      factionKey,
      expired,
      eta,
    ]);
}
