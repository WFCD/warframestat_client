import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'earth_cycle.g.dart';

/// Represents the cycle states for earth and cetus
enum EarthState {
  /// Day
  day,

  /// Night
  night,
}

/// {@template earth_cycle}
/// Data on the current Earth cycle.
/// {@endtemplate}
@JsonSerializable()
class EarthCycle extends WorldstateObject {
  /// {@macro earth_cycle}
  const EarthCycle({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.isDay,
    required this.state,
  });

  /// Creates a EarthCycle from Json map
  factory EarthCycle.fromJson(Map<String, dynamic> json) => _$EarthCycleFromJson(json);

  @override
  String get id => super.id!;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  /// Whether it is currently day or night on earth.
  final bool isDay;

  /// The current state on earth.
  final EarthState state;

  /// Creates a Json map from a EarthCycle
  Map<String, dynamic> toJson() => _$EarthCycleToJson(this);

  @override
  List<Object?> get props => super.props..add([isDay, state]);
}
