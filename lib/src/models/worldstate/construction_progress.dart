import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'construction_progress.g.dart';

/// {@template construction_progress}
/// Data on construction progress.
/// {@endtemplate}
@JsonSerializable()
class ConstructionProgress extends WorldstateObject {
  /// {@macro construction_progress}
  const ConstructionProgress({
    required super.id,
    required this.fomorianProgress,
    required this.razorbackProgress,
    required this.unknownProgress,
  });

  /// Creates a ConstructionProgress from Json map
  factory ConstructionProgress.fromJson(Map<String, dynamic> json) =>
      _$ConstructionProgressFromJson(json);

  @override
  String get id => super.id!;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  /// Fomorian consruction progress.
  final String fomorianProgress;

  /// Razorback construction progress.
  final String razorbackProgress;

  /// Unknown construction progress (I have no idea).
  final String unknownProgress;

  /// Creates a Json map from a ConstructionProgress
  Map<String, dynamic> toJson() => _$ConstructionProgressToJson(this);

  @override
  List<Object?> get props => super.props
    ..addAll([fomorianProgress, razorbackProgress, unknownProgress]);
}
