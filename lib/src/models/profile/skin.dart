import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'skin.g.dart';

/// {@template weapon_skin}
/// Skins applied to weapons and warframe
/// {@endtemplate}
@JsonSerializable()
class ArsenalSkin extends Equatable {
  /// {@macro weapon_skin}
  const ArsenalSkin({required this.uniqueName, required this.item});

  /// Creates an instance from a json map
  factory ArsenalSkin.fromJson(Map<String, dynamic> json) {
    return _$ArsenalSkinFromJson(json);
  }

  /// Skin uniqueName
  final String uniqueName;

  /// Item found using [uniqueName]
  @JsonKey(fromJson: toItem)
  final Item? item;

  /// Creates a json map from [ArsenalSkin]
  Map<String, dynamic> toJson() => _$ArsenalSkinToJson(this);

  @override
  List<Object?> get props => [uniqueName, item];
}
