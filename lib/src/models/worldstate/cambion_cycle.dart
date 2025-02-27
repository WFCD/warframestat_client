import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'cambion_cycle.g.dart';

/// The states for Cambion
enum CambionState {
  /// Fass
  fass,

  /// Vome
  vome,
}

/// {@template cambion_cycle}
/// Data on the Cambion Cycle.
///
/// Cetus amd Cambion seem to share the same cycle so if extra details are
/// needed users might want to use CetusCycle.
/// {@endtemplate}
@JsonSerializable()
class CambionCycle extends WorldstateObject {
  /// {@macro cambion_cycle}
  const CambionCycle({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.state,
    required this.active,
  });

  /// Creates a CambionCycle from Json map
  factory CambionCycle.fromJson(Map<String, dynamic> json) => _$CambionCycleFromJson(json);

  @override
  String get id => super.id!;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  /// Represents the current state on cambion.
  final CambionState state;

  /// Current state active on Cambion.
  final String active;

  /// Creates a Json map from a CambionCycle
  Map<String, dynamic> toJson() => _$CambionCycleToJson(this);

  @override
  List<Object?> get props => super.props..addAll([state, active]);
}
