import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'vallis_cycle.g.dart';

/// {@template vallis_cycle}
/// VallisCycle description
/// {@endtemplate}
@JsonSerializable()
class VallisCycle extends CycleObject {
  /// {@macro vallis_cycle}
  const VallisCycle({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.isWarm,
    required super.state,
    required super.timeLeft,
  });

  /// Creates a VallisCycle from Json map
  factory VallisCycle.fromJson(Map<String, dynamic> json) =>
      _$VallisCycleFromJson(json);

  /// A description for isWarm
  final bool isWarm;

  @override
  bool get stateBool => isWarm;

  /// Creates a Json map from a VallisCycle
  Map<String, dynamic> toJson() => _$VallisCycleToJson(this);

  @override
  List<Object?> get props => super.props..add(isWarm);
}
