import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'level_stat.g.dart';

/// {@template levelstats}
/// Contains rank stats for an [ItemCommon].
///
/// i.e. mod ranks or arcanes.
/// {@endtemplate}
@JsonSerializable()
class LevelStat extends Equatable {
  /// {@macro levelstats}
  const LevelStat({required this.stats});

  /// Creates a [ItemCommon] from a json map.
  factory LevelStat.fromJson(Map<String, dynamic> json) {
    return _$LevelStatFromJson(json);
  }

  /// Stat data.
  ///
  /// A mod/arcane can have multiple stat descriptions.
  final List<String> stats;

  /// Creates a json map from [ItemCommon].
  Map<String, dynamic> toJson() => _$LevelStatToJson(this);

  @override
  List<Object?> get props => [stats];
}
