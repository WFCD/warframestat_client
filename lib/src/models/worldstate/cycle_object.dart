import 'package:warframestat_client/warframestat_client.dart';

/// {@template cycleobject}
/// Base class for all cycle objects.
/// {@endtemplate}
abstract class CycleObject extends WorldstateObject {
  /// {@macro cycleobject}
  const CycleObject({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.state,
    required this.timeLeft,
  });

  /// The state of the [CycleObject].
  bool get stateBool;

  /// The string representation of the current state..
  final String state;

  /// String representation of time left in the current cycle.
  final String timeLeft;

  @override
  List<Object?> get props => super.props..addAll([stateBool, state, timeLeft]);

  @override
  bool? get stringify => false;
}
