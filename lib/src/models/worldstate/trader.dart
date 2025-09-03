import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'trader.g.dart';

/// {@template void_trader}
/// Data on the void trader.
/// {@endtemplate}
@JsonSerializable()
class Trader extends WorldstateObject {
  /// {@macro void_trader}
  const Trader({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.character,
    required this.location,
    required this.inventory,
    required this.initialStart,
    required this.schedule,
  });

  /// Creates a VoidTrader from Json map
  factory Trader.fromJson(Map<String, dynamic> json) => _$TraderFromJson(json);

  @override
  String get id => super.id!;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

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
  List<Object?> get props => super.props..addAll([character, location, inventory, initialStart, schedule]);
}
