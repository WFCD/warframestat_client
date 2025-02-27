import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/enums.dart';

part 'kinepage.g.dart';

/// {@template kinepage}
/// Data class for kinepage
/// {@endtemplate}
@JsonSerializable()
class Kinepage {
  /// {@macro kinepage}
  Kinepage({required this.timestamp, required this.message, required this.translations});

  /// Creates a [Kinepage] instance from a json map
  factory Kinepage.fromJson(Map<String, dynamic> json) {
    return _$KinepageFromJson(json);
  }

  /// The date the message was sent
  final DateTime timestamp;

  /// The message itself
  final String message;

  /// The message in different translations
  final Map<Language, String> translations;

  /// Returns a map from [Kinepage]
  Map<String, dynamic> toJson() => _$KinepageToJson(this);
}
