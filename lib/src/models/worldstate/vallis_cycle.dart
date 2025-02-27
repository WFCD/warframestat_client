import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'vallis_cycle.g.dart';

/// The states for Orb Vallis
enum VallisState {
  /// Cold
  cold,

  /// Warm
  warm,
}

/// {@template vallis_cycle}
/// VallisCycle description
/// {@endtemplate}
@JsonSerializable()
class VallisCycle extends WorldstateObject {
  /// {@macro vallis_cycle}
  const VallisCycle({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.isWarm,
    required this.state,
  });

  /// Creates a VallisCycle from Json map
  factory VallisCycle.fromJson(Map<String, dynamic> json) => _$VallisCycleFromJson(json);

  @override
  String get id => super.id!;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  /// A description for isWarm
  final bool isWarm;

  /// Represents the current state on Vallis.
  final VallisState state;

  /// Creates a Json map from a VallisCycle
  Map<String, dynamic> toJson() => _$VallisCycleToJson(this);

  @override
  List<Object?> get props => super.props..add([isWarm, state]);
}
