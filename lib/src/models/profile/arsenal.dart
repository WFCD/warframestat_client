import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/profile/arsenal_item.dart';
import 'package:warframestat_client/src/models/profile/skin.dart';
import 'package:warframestat_client/src/models/profile/xp_item.dart';

part 'arsenal.g.dart';

/// {@template arsenal}
/// Player arsenal
/// {@endtemplate}
@JsonSerializable()
class Arsenal extends Equatable {
  /// {@macro arsenal}
  const Arsenal({
    required this.weaponSkins,
    required this.suits,
    required this.primary,
    required this.secondary,
    required this.melee,
    required this.xpInfo,
  });

  /// Creates an instance from json map
  factory Arsenal.fromJson(Map<String, dynamic> json) {
    return _$ArsenalFromJson(json);
  }

  /// Skins applied to weapons and warframe
  final List<ArsenalSkin> weaponSkins;

  /// Warframe equipped
  final List<ArsenalItem> suits;

  /// Primary equipped
  final List<ArsenalItem>? primary;

  /// Secondary equipped
  final List<ArsenalItem>? secondary;

  /// Melee equipped
  final List<ArsenalItem>? melee;

  /// XP information for all of the player's items
  final List<XpItem> xpInfo;

  /// Creates a json map from [Arsenal]
  Map<String, dynamic> toJson() => _$ArsenalToJson(this);

  @override
  List<Object?> get props {
    return [weaponSkins, suits, primary, secondary, melee, xpInfo];
  }
}
