import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'simaris.g.dart';

/// {@template simaris}
/// Simaris target data.
/// {@endtemplate}
@JsonSerializable()
class Simaris extends Equatable {
  /// {@macro simaris}
  const Simaris({
    required this.target,
    required this.isTargetActive,
  });

  /// Creates a Simaris from Json map
  factory Simaris.fromJson(Map<String, dynamic> json) =>
      _$SimarisFromJson(json);

  /// The target's name.
  final String target;

  /// Whether or not the target is still active.
  final bool isTargetActive;

  /// Creates a Json map from a Simaris
  Map<String, dynamic> toJson() => _$SimarisToJson(this);

  @override
  List<Object?> get props => [target, isTargetActive];
}
