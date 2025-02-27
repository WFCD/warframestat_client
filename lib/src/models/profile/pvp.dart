import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pvp.g.dart';

/// {@template conclave}
/// Player conclave stats
/// {@endtemplate}
@JsonSerializable()
class Pvp extends Equatable {
  /// {@macro conclave}
  const Pvp({required this.uniqueName, required this.suitDeaths, required this.suitKills, required this.weaponKills});

  /// Creates an instance of [Pvp]
  factory Pvp.fromJson(Map<String, dynamic> json) {
    return _$PvpFromJson(json);
  }

  /// PVP match unique name
  final String uniqueName;

  /// Warframe deaths
  final int? suitDeaths;

  /// Warframe kills
  final int? suitKills;

  /// Weapon kills
  final int? weaponKills;

  /// Creates a json map
  Map<String, dynamic> toJson() => _$PvpToJson(this);

  @override
  List<Object?> get props => [uniqueName, suitDeaths, suitKills, weaponKills];
}
