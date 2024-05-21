import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'item_config.g.dart';

/// {@template item_config}
/// Item customizations
/// {@endtemplate}
@JsonSerializable()
class ItemConfig extends Equatable {
  /// {@macro item_config}
  const ItemConfig({
    required this.skins,
    required this.conclaveUpgrades,
    required this.primaryColor,
    required this.sigilColor,
    required this.attachmentsColor,
    required this.syandanaColor,
  });

  /// Creates an [ItemConfig] from a json map
  factory ItemConfig.fromJson(Map<String, dynamic> json) {
    return _$ItemConfigFromJson(json);
  }

  /// List of [Skin]s
  final List<ArsenalSkin> skins;

  /// PVP upgrades applied
  final List<String>? conclaveUpgrades;

  /// Primary colors applied to item
  final ColorMap? primaryColor;

  /// Sigil colors applied to item
  final ColorMap? sigilColor;

  /// Attachment colors applied to item
  final ColorMap? attachmentsColor;

  /// Syandana colors applied to item
  final ColorMap? syandanaColor;

  /// Creates a json map from [ItemConfig]
  Map<String, dynamic> toJson() => _$ItemConfigToJson(this);

  @override
  List<Object?> get props {
    return [
      skins,
      conclaveUpgrades,
      primaryColor,
      sigilColor,
      attachmentsColor,
      syandanaColor,
    ];
  }
}
