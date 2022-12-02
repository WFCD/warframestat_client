import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/worldstate/trader_item.dart';
import 'package:warframestat_client/src/models/worldstate/trader_schedule.dart';
import 'package:warframestat_client/src/objects.dart';

part 'trader.g.dart';

/// {@template void_trader}
/// Data on the void trader.
/// {@endtemplate}
@JsonSerializable()
class Trader extends EphemeralState {
  /// {@macro void_trader}
  const Trader({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.active,
    required this.character,
    required this.location,
    required this.inventory,
    required this.initialStart,
    required this.schedule,
  });

  /// Creates a VoidTrader from Json map
  factory Trader.fromJson(Map<String, dynamic> json) => _$TraderFromJson(json);

  /// Whether the instance is active at the time of creation.
  final bool active;

  /// Character name.
  final String character;

  /// Location the void trader can be found in.
  final String location;

  /// Void trader inventory
  final List<TraderItem> inventory;

  ///
  final DateTime initialStart;

  ///
  final List<TraderSchedule> schedule;

  /// Creates a Json map from a VoidTrader
  Map<String, dynamic> toJson() => _$TraderToJson(this);

  @override
  List<Object?> get props => super.props
    ..addAll([active, character, location, inventory, initialStart, schedule]);
}
