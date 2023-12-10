import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'cetus_cycle.g.dart';

/// {@template cetus_cycle}
/// Data on the current day/night cycle of cetus.
/// {@endtemplate}
@JsonSerializable()
class CetusCycle extends WorldstateObject {
  /// {@macro cetus_cycle}
  const CetusCycle({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.isDay,
    required this.state,
    required this.isCetus,
  });

  /// Creates a CetusCycle from Json map
  factory CetusCycle.fromJson(Map<String, dynamic> json) =>
      _$CetusCycleFromJson(json);

  /// Whether it is day or night on cetus.
  final bool isDay;

  /// Current state on cetus.
  final EarthState state;

  /// If the current instance cycel belongs to cetus.
  final bool isCetus;

  /// Creates a Json map from a CetusCycle
  Map<String, dynamic> toJson() => _$CetusCycleToJson(this);

  @override
  List<Object?> get props => super.props..addAll([isDay, state, isCetus]);
}
