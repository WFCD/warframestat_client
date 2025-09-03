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
    required this.mission,
    required this.tag,
  });

  /// Creates a Alert from Json map
  factory Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);

  @override
  String get id => super.id!;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  /// Mission details.
  final Mission mission;

  /// Alert tag.
  final String? tag;

  /// Creates a Json map from a Alert
  Map<String, dynamic> toJson() => _$AlertToJson(this);

  @override
  List<Object?> get props => super.props..addAll([mission, tag]);
}
