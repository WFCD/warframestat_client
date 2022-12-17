import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'target.g.dart';

/// {@template target}
/// Target description
/// {@endtemplate}
@JsonSerializable()
class SynthTarget {
  /// {@macro target}
  const SynthTarget({
    required this.name,
    required this.imageKey,
    required this.locations,
  });

  /// Creates a Target from Json map
  factory SynthTarget.fromJson(Map<String, dynamic> data) =>
      _$SynthTargetFromJson(data);

  /// Target name.
  final String name;

  /// Target image.
  final String imageKey;

  /// Target locations.
  final List<TargetLocation> locations;

  /// Creates a Json map from a Target
  Map<String, dynamic> toJson() => _$SynthTargetToJson(this);
}
