import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'operator_loadout.g.dart';

@JsonSerializable()
class OperatorLoadout extends Equatable {
  const OperatorLoadout({
    required this.skins,
    required this.operatorAmp,
    required this.upgrades,
    required this.primaryColor,
    required this.sigilColor,
    required this.attachmentsColor,
    required this.syandanaColor,
    required this.eyeColor,
    required this.facial,
    required this.cloth,
  });

  factory OperatorLoadout.fromJson(Map<String, dynamic> json) {
    return _$OperatorLoadoutFromJson(json);
  }

  /// Skins applied to operator
  // TODO(SlayerOrnstein): change to Skin when the API is updated
  final List<String> skins;

  /// Amp ID
  final String? operatorAmp;

  /// Applied upgrade IDs
  final List<String> upgrades;

  /// Operator primary color
  final ColorMap? primaryColor;

  /// Operator sigil color
  final ColorMap? sigilColor;

  /// Operator attachments color
  final ColorMap? attachmentsColor;

  /// Operator syandana color
  final ColorMap? syandanaColor;

  /// Operator eye color
  final ColorMap? eyeColor;

  /// Operator facial color
  final ColorMap? facial;

  /// Operator clothes color
  final ColorMap? cloth;

  /// Creates a json map
  Map<String, dynamic> toJson() => _$OperatorLoadoutToJson(this);

  @override
  List<Object?> get props {
    return [
      skins,
      operatorAmp,
      upgrades,
      primaryColor,
      sigilColor,
      attachmentsColor,
      syandanaColor,
      eyeColor,
      facial,
      cloth,
    ];
  }
}
