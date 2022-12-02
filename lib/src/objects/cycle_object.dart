import 'package:warframestat_client/src/objects.dart';

/// {@template cycleobject}
/// Base class for all cycle objects.
/// {@endtemplate}
abstract class CycleObject extends EphemeralState {
  /// {@macro cycleobject}
  const CycleObject({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.state,
    required this.timeLeft,
    required this.shortString,
  });

  /// The state of the [CycleObject].
  bool get stateBool;

  /// The string representation of the current state..
  final String state;

  /// String representation of time left in the current cycle.
  final String timeLeft;

  /// String representtation of the eta before next state.
  final String shortString;

  @override
  List<Object?> get props =>
      super.props..addAll([stateBool, state, timeLeft, shortString]);

  @override
  bool? get stringify => false;
}
