// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reward.g.dart';

/// {@template reward}
/// Contains data about a given reward.
/// {@endtemplate}
@JsonSerializable()
class Reward extends Equatable {
  /// {@macro reward}
  const Reward({
    required this.items,
    required this.countedItems,
    required this.credits,
    required this.asString,
    required this.itemString,
    required this.thumbnail,
    required this.color,
  });

  /// Creates a [Reward] from json map.
  factory Reward.fromJson(Map<String, dynamic> json) {
    return _$RewardFromJson(json);
  }

  /// Items being awarded.
  final List<String> items;

  /// The counted items being rewarded.
  final List<CountedItem> countedItems;

  /// The credits being rewarded.
  final int credits;

  /// Reward as a string.
  ///
  /// Meaning that if [itemString] is "Exilus Weapon Adapter Blueprint" and
  /// [credits] is 200. Then this will output:
  /// "Exilus Weapon Adapter Blueprint + 20000cr"
  final String asString;

  /// Item as a string.
  final String itemString;

  /// Item thumnail.
  final String thumbnail;

  /// Item color.
  final int color;

  /// Creates a json map from [Reward].
  Map<String, dynamic> toJson() => _$RewardToJson(this);

  @override
  List<Object?> get props {
    return [
      countedItems,
      thumbnail,
      color,
      credits,
      items,
      itemString,
    ];
  }
}

@JsonSerializable()
class CountedItem extends Equatable {
  const CountedItem({
    required this.count,
    required this.type,
    required this.key,
  });

  factory CountedItem.fromJson(Map<String, dynamic> json) {
    return _$CountedItemFromJson(json);
  }

  /// Quantity of items being rewarded.
  final int count;

  /// Type of reward.
  ///
  /// This key is translated.
  final String type;

  /// Type of reward.
  ///
  /// This key is not translated.
  final String key;

  Map<String, dynamic> toJson() => _$CountedItemToJson(this);

  @override
  List<Object> get props => [count, type, key];
}
