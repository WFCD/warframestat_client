import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'mod.g.dart';

/// {@template mod}
/// Mod description
/// {@endtemplate}
@JsonSerializable()
class Mod extends DroppableItem {
  /// {@macro mod}
  const Mod({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.tradable,
    super.patchlogs,
    required Rarity super.rarity,
    super.releaseDate,
    super.drops,
    required this.baseDrain,
    this.compatName,
    required this.fusionLimit,
    required this.isAugment,
    required this.isPrime,
    required this.levelStats,
    required this.transmutable,
    super.wikiaThumbnail,
    super.wikiaUrl,
  });

  /// Creates a Mod from Json map
  factory Mod.fromJson(Map<String, dynamic> data) => _$ModFromJson(data);

  /// Drain the [Mod] takes at rank 0.
  final int baseDrain;

  /// Compatability.
  final String? compatName;

  /// Max rank for this [Mod]
  final int fusionLimit;

  /// Whether this [Mod] is an augment mod or not.
  final bool? isAugment;

  /// Whether this [Mod] is primed.
  final bool isPrime;

  /// Stats for each rank.
  final List<LevelStat>? levelStats;

  /// whether this mod is transmutable or not.
  final bool? transmutable;

  /// Creates a Json map from a Mod
  Map<String, dynamic> toJson() => _$ModToJson(this);

  @override
  List<Object?> get props => super.props
    ..addAll([
      baseDrain,
      compatName,
      fusionLimit,
      isAugment,
      isPrime,
      levelStats,
      transmutable
    ]);
}
