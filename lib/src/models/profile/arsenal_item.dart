import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'arsenal_item.g.dart';

/// Polarity applied to weapon including slot number
typedef Polarity = ({String polarity, int slot});

/// {@template inventory_item}
/// An item equiped by the player
/// {@endtemplate}
@JsonSerializable()
class ArsenalItem extends Equatable {
  /// {@macro iventory_item}
  const ArsenalItem({
    required this.id,
    required this.uniqueName,
    required this.name,
    required this.item,
    required this.nemesis,
    required this.configs,
    required this.upgradeTypes,
    required this.upgradeFingerPrint,
    required this.features,
    required this.upgradeVersion,
    required this.xp,
    required this.polarized,
    required this.polarities,
    required this.focusLens,
    required this.customizationSlots,
    required this.primaryColor,
    required this.sigilColor,
    required this.attachmentsColor,
    required this.syandanaColor,
    required this.infestationDate,
  });

  /// Creates an instance from json map
  factory ArsenalItem.fromJson(Map<String, dynamic> json) {
    return _$ArsenalItemFromJson(json);
  }

  /// Item ID
  @JsonKey(name: 'itemId')
  final String id;

  /// Item unique name
  final String uniqueName;

  /// Item name.
  final String? name;

  /// [Item]
  @JsonKey(fromJson: toItem)
  final Item? item;

  /// Nemesis weapon name
  final String? nemesis;

  /// Configuration for this weapon. Such as colors and skins applied by the
  /// player
  final List<ItemConfig> configs;

  /// The upgrade that was applied to this weapon
  final String? upgradeTypes;

  /// Information on the upgradeType that was applied
  final Map<String, dynamic>? upgradeFingerPrint;

  ///
  final int? features;

  ///
  @JsonKey(name: 'upgradeVer')
  final int upgradeVersion;

  ///  XP earned with this weapon
  final int? xp;

  /// How many mod slots are currently polarized.
  final int? polarized;

  /// Which polarity types exist on the weapon
  final List<Polarity>? polarities;

  /// Focus lens applied
  final String? focusLens;

  /// No idea
  final int? customizationSlots;

  /// Primary colors applied to item if they exist
  ///
  /// Primary would be colors applied to a player's Warframe
  final ColorMap? primaryColor;

  /// Sigil colors applied to item if they exist
  final ColorMap? sigilColor;

  /// Attachment colors applied to item if they exist
  final ColorMap? attachmentsColor;

  /// Syandana colors applied to item if they exist
  final ColorMap? syandanaColor;

  /// If set will show when the player's warframe was infested.
  final DateTime? infestationDate;

  /// Creates a json map from [ArsenalItem]
  Map<String, dynamic> toJson() => _$ArsenalItemToJson(this);

  @override
  List<Object?> get props {
    return [
      id,
      uniqueName,
      name,
      item,
      nemesis,
      configs,
      upgradeTypes,
      upgradeFingerPrint,
      features,
      upgradeVersion,
      xp,
      polarized,
      polarities,
      focusLens,
      customizationSlots,
      primaryColor,
      sigilColor,
      attachmentsColor,
      syandanaColor,
      infestationDate,
    ];
  }
}
