import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'zariman_cycle.g.dart';

/// {@template zariman_cycle}
/// ZarimanCycle description
/// {@endtemplate}
@JsonSerializable()
class ZarimanCycle extends CycleObject {
  /// {@macro zariman_cycle}
  const ZarimanCycle({
    required super.id,
    required this.bountiesEndDate,
    required super.activation,
    required super.expiry,
    required this.isCorpus,
    required super.state,
    required super.timeLeft,
    required super.shortString,
  });

  /// Creates a ZarimanCycle from Json map
  factory ZarimanCycle.fromJson(Map<String, dynamic> json) =>
      _$ZarimanCycleFromJson(json);

  /// The time Zariman bounties expires on.
  final DateTime bountiesEndDate;

  /// Whether or not the Zariman is currently being occupied by corpus or not.
  final bool isCorpus;

  @override
  bool get stateBool => isCorpus;

  /// Creates a Json map from a ZarimanCycle
  Map<String, dynamic> toJson() => _$ZarimanCycleToJson(this);

  @override
  List<Object?> get props => super.props..addAll([bountiesEndDate, isCorpus]);
}
