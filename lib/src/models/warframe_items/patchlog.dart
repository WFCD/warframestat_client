import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'patchlog.g.dart';

/// {@template patchlog}
/// Data on an [Item]'s update changes.
/// {@endtemplate}
@JsonSerializable()
class Patchlog extends Equatable {
  /// {@macro patchlog}
  const Patchlog({
    required this.name,
    required this.date,
    required this.url,
    required this.additions,
    required this.changes,
    required this.fixes,
  });

  /// Creates a [Patchlog] from a json map.
  factory Patchlog.fromJson(Map<String, dynamic> json) {
    return _$PatchlogFromJson(json);
  }

  /// Name of the update.
  final String name;

  /// Deploy date.
  final DateTime date;

  /// Link to the update's full changelog.
  final String url;

  /// Additions specfic to the [Item].
  final String additions;

  /// Changes specfic to the [Item].
  final String changes;

  /// Fixes specfic to the [Item].
  final String fixes;

  /// Creates a json map from [Patchlog].
  Map<String, dynamic> toJson() => _$PatchlogToJson(this);

  @override
  List<Object> get props => [name, date, url, additions, changes, fixes];
}
