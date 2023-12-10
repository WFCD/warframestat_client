import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'zariman_cycle.g.dart';

/// The Zariman states.
enum ZarimanState {
  /// Corpus
  corpus,

  /// Grineer
  grineer
}

/// {@template zariman_cycle}
/// ZarimanCycle description
/// {@endtemplate}
@JsonSerializable()
class ZarimanCycle extends WorldstateObject {
  /// {@macro zariman_cycle}
  const ZarimanCycle({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.bountiesEndDate,
    required this.isCorpus,
    required this.state,
  });

  /// Creates a ZarimanCycle from Json map
  factory ZarimanCycle.fromJson(Map<String, dynamic> json) =>
      _$ZarimanCycleFromJson(json);

  /// The time Zariman bounties expires on.
  final DateTime bountiesEndDate;

  /// Whether or not the Zariman is currently being occupied by corpus or not.
  final bool isCorpus;

  /// The current enemy occupation.
  final ZarimanState state;

  /// Creates a Json map from a ZarimanCycle
  Map<String, dynamic> toJson() => _$ZarimanCycleToJson(this);

  @override
  List<Object?> get props =>
      super.props..addAll([bountiesEndDate, isCorpus, state]);
}
