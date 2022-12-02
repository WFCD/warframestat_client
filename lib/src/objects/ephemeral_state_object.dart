import 'package:meta/meta.dart';
import 'package:warframestat_client/src/objects.dart';

/// {@template ephemeralstate}
/// Denotes a [WorldstateObject] who's object existence is ephemeral.
///
/// Typically all instances with an [activation] and an [expiry] extend
/// [EphemeralState].
/// All instance have and [id] as oppesed to other
/// [WorldstateObject]s that may or may not.
/// {@endtemplate}
@immutable
abstract class EphemeralState implements WorldstateObject {
  /// {@macro ephemeralstate}
  const EphemeralState({
    required this.id,
    required this.activation,
    required this.expiry,
  });

  /// ID of the instance.
  @override
  final String id;

  /// The time the state was activated.
  final DateTime activation;

  /// The time the state will expire.
  final DateTime expiry;

  /// The remaining time until the state expires.
  Duration get remaining => expiry.toLocal().difference(DateTime.now());

  @override
  List<Object?> get props => [id, activation, expiry];

  @override
  bool? get stringify => false;
}
