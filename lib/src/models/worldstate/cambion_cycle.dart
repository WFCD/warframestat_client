import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/objects.dart';

part 'cambion_cycle.g.dart';

/// {@template cambion_cycle}
/// Data on the Cambion Cycle.
///
/// Cetus amd Cambion seem to share the same cycle so if extra details are
/// needed users might want to use CetusCycle.
/// {@endtemplate}
@JsonSerializable()
class CambionCycle extends CycleObject {
  /// {@macro cambion_cycle}
  const CambionCycle({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.active,
    required super.timeLeft,
  }) : super(state: '', shortString: '');

  /// Creates a CambionCycle from Json map
  factory CambionCycle.fromJson(Map<String, dynamic> json) =>
      _$CambionCycleFromJson(json);

  /// Current state active on Cambion.
  final String active;

  @override
  bool get stateBool => active == 'vome';

  /// Creates a Json map from a CambionCycle
  Map<String, dynamic> toJson() => _$CambionCycleToJson(this);

  @override
  List<Object?> get props => super.props..addAll([active, timeLeft]);
}
