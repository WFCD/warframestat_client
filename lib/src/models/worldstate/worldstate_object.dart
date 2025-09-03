import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// {@template worldstateobject}
/// Base class for objects that come from the worldstate.
///
/// Not all classes extend/implement this class but the majority do.
/// {@endtemplate}
@immutable
abstract class WorldstateObject extends Equatable {
  /// {@macro worldstateobject}
  const WorldstateObject({this.id, this.activation, this.expiry});

  /// ID of the instance.
  final String? id;

  /// The time the state was activated.
  final DateTime? activation;

  /// The time the state will expire.
  final DateTime? expiry;

  /// The remaining time until the state expires.
  ///
  /// Will return null when [WorldstateObject] contains no [expiry]
  Duration? get remaining => expiry?.toLocal().difference(DateTime.now());

  /// Whether or not the object was active after it was created.
  bool get active => expiry?.isBefore(DateTime.timestamp()) ?? false;

  @override
  List<Object?> get props => [id, activation, expiry];
}
