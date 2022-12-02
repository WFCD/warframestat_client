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
  const WorldstateObject({required this.id});

  /// ID of the instance.
  final String? id;

  @override
  List<Object?> get props => [id];
}
