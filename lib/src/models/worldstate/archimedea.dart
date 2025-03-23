import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/worldstate/state.dart';

part 'archimedea.g.dart';

/// {@template  deep_archimedea}
/// Contains data on the current Deep Archimedea
/// {@endtemplate}
@JsonSerializable()
class Archimedea extends WorldstateObject {
  /// {@macro deep_archimedea}
  const Archimedea({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.missions,
    required this.personalModifiers,
  });

  /// Creates a [Archimedea] from Json map
  factory Archimedea.fromJson(Map<String, dynamic> json) {
    return _$ArchimedeaFromJson(json);
  }

  /// Current rotation's mission
  final List<ArchimedeaMission> missions;

  /// Current rotation's personal modifiers
  final List<Modifier> personalModifiers;

  /// Creates a Json map from a [Archimedea]
  Map<String, dynamic> toJson() => _$ArchimedeaToJson(this);
}

/// Data on a personal or mission modifier
typedef Modifier = ({String key, String name, String description});

/// {@template Deep_archimedea_mission}
/// Data containing a Deep Archimedea mission information.
/// {@endtemplate}
@JsonSerializable()
class ArchimedeaMission {
  /// {@macro Deep_archimedea_mission}
  ArchimedeaMission({required this.mission, required this.deviation, required this.riskVariables});

  /// Creates a [ArchimedeaMission] from Json map
  factory ArchimedeaMission.fromJson(Map<String, dynamic> json) {
    return _$ArchimedeaMissionFromJson(json);
  }

  /// Mission type
  final String mission;

  /// Mission deviation
  final Modifier deviation;

  /// Mission risk variables
  final List<Modifier> riskVariables;

  /// Creates a Json map from a [ArchimedeaMission]
  Map<String, dynamic> toJson() => _$ArchimedeaMissionToJson(this);
}
