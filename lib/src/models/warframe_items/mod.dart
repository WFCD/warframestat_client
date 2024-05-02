import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'mod.g.dart';

/// {@template basemod}
/// Base class for [Mod] and [ModSet]
/// {@endtemplate}
abstract class BaseMod extends DroppableItem {
  /// {@macro basemod}
  const BaseMod({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.imageName,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.patchlogs,
    required super.releaseDate,
    required super.rarity,
    required super.drops,
    required this.isPrime,
    super.wikiaThumbnail,
    super.wikiaUrl,
  });

  /// Whether the mod is a prime or not
  final bool isPrime;

  @override
  List<Object?> get props => super.props..add(isPrime);
}

/// {@template mod}
/// Mod description
/// {@endtemplate}
@JsonSerializable()
class Mod extends BaseMod {
  /// {@macro mod}
  const Mod({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.imageName,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.isPrime,
    required this.polarity,
    required super.rarity,
    required super.drops,
    required this.baseDrain,
    required this.fusionLimit,
    required this.isAugment,
    required this.levelStats,
    required this.transmutable,
    super.wikiaThumbnail,
    super.wikiaUrl,
    super.patchlogs,
    super.releaseDate,
    this.modSet,
    this.compatName,
  });

  /// Creates a Mod from Json map
  factory Mod.fromJson(Map<String, dynamic> data) => _$ModFromJson(data);

  /// The polarity of the given [Mod].
  final String? polarity;

  /// Drain the [Mod] takes at rank 0.
  final int? baseDrain;

  /// Compatability.
  final String? compatName;

  /// Max rank for this [Mod]
  final int? fusionLimit;

  /// Whether this [Mod] is an augment mod or not.
  final bool? isAugment;

  /// Stats for each rank.
  final List<LevelStat>? levelStats;

  /// whether this mod is transmutable or not.
  final bool? transmutable;

  /// The mod set the mod belongs to.
  ///
  /// This will be a uniqueName.
  final String? modSet;

  /// Creates a Json map from a Mod
  @override
  Map<String, dynamic> toJson() => _$ModToJson(this);

  @override
  List<Object?> get props => super.props
    ..addAll([
      baseDrain,
      compatName,
      fusionLimit,
      isAugment,
      levelStats,
      transmutable,
      polarity,
      modSet,
    ]);
}

/// {@template modset}
/// Represents data on a mod set upgrade.
/// {@endtemplate}
@JsonSerializable()
class ModSet extends BaseMod {
  /// {@macro modset}
  const ModSet({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.imageName,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.patchlogs,
    required super.releaseDate,
    required super.isPrime,
    required super.rarity,
    required super.drops,
    required this.numUpgradesInSet,
    required this.stats,
  });

  /// Creates a [ModSet] from json.
  factory ModSet.fromJson(Map<String, dynamic> json) {
    return _$ModSetFromJson(json);
  }

  /// Number of upgrades per mod in set.
  final int numUpgradesInSet;

  /// Upgrade description for each tier.
  final List<String> stats;

  @override
  Map<String, dynamic> toJson() => _$ModSetToJson(this);

  @override
  List<Object?> get props => super.props..addAll([numUpgradesInSet, stats]);
}
