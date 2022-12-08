import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'earth_cycle.g.dart';

/// {@template earth_cycle}
/// Data on the current Earth cycle.
/// {@endtemplate}
@JsonSerializable()
class EarthCycle extends CycleObject {
  /// {@macro earth_cycle}
  const EarthCycle({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.isDay,
    required super.state,
    required super.timeLeft,
    required super.shortString,
  });

  /// Creates a EarthCycle from Json map
  factory EarthCycle.fromJson(Map<String, dynamic> json) =>
      _$EarthCycleFromJson(json);

  /// Whether it is currently day or night on earth.
  final bool isDay;

  @override
  bool get stateBool => isDay;

  /// Creates a Json map from a EarthCycle
  Map<String, dynamic> toJson() => _$EarthCycleToJson(this);

  @override
  List<Object?> get props => super.props..add(isDay);
}
