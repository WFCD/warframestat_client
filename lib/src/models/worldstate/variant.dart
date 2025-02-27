import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variant.g.dart';

/// {@template variant}
/// Sortie missions variants.
/// {@endtemplate}
@JsonSerializable()
class Variant extends Equatable {
  /// {@macro variant}
  const Variant({
    required this.missionType,
    required this.modifier,
    required this.modifierDescription,
    required this.node,
  });

  /// Creates a Variant from Json map
  factory Variant.fromJson(Map<String, dynamic> data) => _$VariantFromJson(data);

  /// A description for missionType
  final String missionType;

  /// A description for modifier
  final String modifier;

  /// A description for modifierDescription
  final String modifierDescription;

  /// A description for node
  final String node;

  @override
  List<Object?> get props => [missionType, modifier, modifierDescription, node];

  /// Creates a Json map from a Variant
  Map<String, dynamic> toJson() => _$VariantToJson(this);
}
