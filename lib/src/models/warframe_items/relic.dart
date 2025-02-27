import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'relic.g.dart';

/// {@template relic}
/// Relic description
/// {@endtemplate}
@JsonSerializable()
class Relic extends DroppableItem {
  /// {@macro relic}
  const Relic({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.imageName,
    required super.drops,
    required super.tradable,
    required super.patchlogs,
    required this.locations,
    required this.marketInfo,
    required this.rewards,
    required this.vaulted,
  });

  /// Creates a Relic from Json map
  factory Relic.fromJson(Map<String, dynamic> data) => _$RelicFromJson(data);

  /// Relic drop locations.
  final List<Location> locations;

  /// Warframe market url.
  final MarketInfo? marketInfo;

  /// Rewards droped by relic
  final List<RelicReward> rewards;

  /// Whether this relic has been vaulted or not.
  final bool? vaulted;

  /// Creates a Json map from a Relic
  @override
  Map<String, dynamic> toJson() => _$RelicToJson(this);

  @override
  List<Object?> get props => super.props..addAll([marketInfo, vaulted]);
}

/// {@template location}
/// Relic drop location and chance.
/// {@endtemplate}
@JsonSerializable()
class Location extends Equatable {
  /// {@macro location}
  const Location({required this.location, required this.rarity, required this.chance});

  /// Creates a Location from Json map
  factory Location.fromJson(Map<String, dynamic> json) {
    return _$LocationFromJson(json);
  }

  /// Relic drop location.
  final String location;

  /// Relic rarity.
  final Rarity rarity;

  /// Drop chance.
  final double chance;

  /// Creates a Json map from a Location.
  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  List<Object?> get props => [location, rarity, chance];
}

/// {@template reward}
/// Relics rewards
/// {@endtemplate}
@JsonSerializable()
class RelicReward extends Equatable {
  /// {@macro reward}
  const RelicReward({required this.rarity, required this.chance, required this.item});

  /// Creates a Reward from Json map.
  factory RelicReward.fromJson(Map<String, dynamic> json) {
    return _$RelicRewardFromJson(json);
  }

  /// Reward rarity.
  final Rarity rarity;

  /// Reward chance.
  final num chance;

  /// Item that drops.
  final RewardItem item;

  /// Creates a Json map from Reward.
  Map<String, dynamic> toJson() => _$RelicRewardToJson(this);

  @override
  List<Object?> get props => [rarity, chance];
}

/// {@template rewarditem}
/// Relic reward item.
/// {@endtemplate}
@JsonSerializable()
class RewardItem extends Equatable {
  /// {@macro rewarditem}
  const RewardItem({required this.uniqueName, required this.name, required this.warframeMarket});

  /// Creates a RewardItem from Json map.
  factory RewardItem.fromJson(Map<String, dynamic> json) {
    return _$RewardItemFromJson(json);
  }

  /// Reward unique name.
  final String uniqueName;

  /// Reward name;
  final String name;

  /// Warframe market url.
  final MarketInfo? warframeMarket;

  /// Creates a Json map from RewardItem.
  Map<String, dynamic> toJson() => _$RewardItemToJson(this);

  @override
  List<Object?> get props => [uniqueName, name, warframeMarket];
}
