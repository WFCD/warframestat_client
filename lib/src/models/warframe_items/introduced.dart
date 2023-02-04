import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'introduced.g.dart';

/// {@template introduced}
/// The update the [Item] was intoduced in.
/// {@endtemplate}
@JsonSerializable()
class Introduced extends Equatable {
  /// {@macro introduced}
  const Introduced({
    required this.name,
    required this.url,
    required this.aliases,
    required this.parent,
    required this.date,
  });

  /// Creates [Introduced] from a json map.
  factory Introduced.fromJson(Map<String, dynamic> json) {
    return _$IntroducedFromJson(json);
  }

  /// The name pf the update.
  final String name;

  /// Update changelog
  ///
  /// The link directs to Warframe fandom wikia.
  final String url;

  /// Update alieses.
  final List<String> aliases;

  /// Parent update.
  final String parent;

  /// The date the update was deployed.
  final String date;

  /// Creates a json map from [Introduced].
  Map<String, dynamic> toJson() => _$IntroducedToJson(this);

  @override
  List<Object?> get props => [name, url, aliases, parent, date];
}
