import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/worldstate/state.dart';

part 'deep_archimedea.g.dart';

/// {@template  deep_archimedea}
/// Contains data on the current Deep Archimedea
/// {@endtemplate}
@JsonSerializable()
class DeepArchimedea extends WorldstateObject {
  /// {@macro deep_archimedea}
  const DeepArchimedea({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.missions,
    required this.personalModifiers,
  });

  /// Creates a [DeepArchimedea] from Json map
  factory DeepArchimedea.fromJson(Map<String, dynamic> json) {
    return _$DeepArchimedeaFromJson(json);
  }

  /// Current rotation's mission
  final List<DeepArchimedeaMission> missions;

  /// Current rotation's personal modifiers
  final List<Modifier> personalModifiers;

  /// Creates a Json map from a [DeepArchimedea]
  Map<String, dynamic> toJson() => _$DeepArchimedeaToJson(this);
}

/// Data on a personal or mission modifier
typedef Modifier = ({String key, String name, String description});

/// {@template Deep_archimedea_mission}
/// Data containing a Deep Archimedea mission information.
/// {@endtemplate}
@JsonSerializable()
class DeepArchimedeaMission {
  /// {@macro Deep_archimedea_mission}
  DeepArchimedeaMission({required this.mission, required this.deviation, required this.riskVariables});

  /// Creates a [DeepArchimedeaMission] from Json map
  factory DeepArchimedeaMission.fromJson(Map<String, dynamic> json) {
    return _$DeepArchimedeaMissionFromJson(json);
  }

  /// Mission type
  final String mission;

  /// Mission deviation
  final Modifier deviation;

  /// Mission risk variables
  final List<Modifier> riskVariables;

  /// Creates a Json map from a [DeepArchimedeaMission]
  Map<String, dynamic> toJson() => _$DeepArchimedeaMissionToJson(this);
}
