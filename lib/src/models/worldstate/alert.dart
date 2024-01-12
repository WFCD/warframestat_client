import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'alert.g.dart';

/// {@template alert}
/// Data of the currently active alert.
/// {@endtemplate}
@JsonSerializable()
class Alert extends WorldstateObject {
  /// {@macro alert}
  const Alert({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.startString,
    required this.active,
    required this.mission,
    required this.rewardTypes,
    required this.eta,
    required this.tag,
  });

  /// Creates a Alert from Json map
  factory Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);

  /// Start date as string.
  final String startString;

  /// Whether the aleret is active or not.
  final bool active;

  /// Mission details.
  final Mission mission;

  /// Alert rewards.
  final List<String> rewardTypes;

  /// The expiry date as String.
  final String eta;

  /// Alert tag.
  final String? tag;

  /// Creates a Json map from a Alert
  Map<String, dynamic> toJson() => _$AlertToJson(this);

  @override
  List<Object?> get props =>
      super.props..addAll([startString, active, mission, rewardTypes, tag]);
}
