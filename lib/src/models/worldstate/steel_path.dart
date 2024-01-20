// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'steel_path.g.dart';

/// {@template steel_path}
/// SteelPath description
/// {@endtemplate}
@JsonSerializable()
class SteelPath extends WorldstateObject {
  /// {@macro steel_path}
  const SteelPath({
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.currentReward,
    required this.rotation,
    required this.evergreens,
    required this.incursions,
  }) : super(id: '');

  /// Creates a SteelPath from Json map
  factory SteelPath.fromJson(Map<String, dynamic> json) =>
      _$SteelPathFromJson(json);

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  /// The Steel path current reward.
  final SteelPathReward currentReward;

  /// Steel path reward per rotation.
  final List<SteelPathReward> rotation;

  /// I have no idea.
  final List<SteelPathReward> evergreens;

  /// Steel Path incursion data.
  final Incursion incursions;

  /// Creates a Json map from a SteelPath
  Map<String, dynamic> toJson() => _$SteelPathToJson(this);

  @override
  List<Object> get props => [currentReward, rotation, evergreens, incursions];
}

/// {@template steelpathreward}
/// Data about the a steel path reward.
/// {@endtemplate}
@JsonSerializable()
class SteelPathReward extends Equatable {
  /// {@macro steelpathreward}
  const SteelPathReward({required this.name, required this.cost});

  /// Creates a [SteelPathReward] from a json map.
  factory SteelPathReward.fromJson(Map<String, dynamic> json) {
    return _$SteelPathRewardFromJson(json);
  }

  /// Item name of the reward.
  final String name;

  /// Cost of the reward.
  final int cost;

  /// Creates a json map from [SteelPathReward].
  Map<String, dynamic> toJson() => _$SteelPathRewardToJson(this);

  @override
  List<Object> get props => [name, cost];
}

/// {@template incursion}
/// Data on Steel Path incursion.
/// {@endtemplate}
@JsonSerializable()
class Incursion extends WorldstateObject {
  /// {@macro incursion}
  const Incursion({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
  });

  /// Creates a [Incursion] from a json map.
  factory Incursion.fromJson(Map<String, dynamic> json) {
    return _$IncursionFromJson(json);
  }

  /// Creates a json map from [Incursion].
  Map<String, dynamic> toJson() => _$IncursionToJson(this);
}
