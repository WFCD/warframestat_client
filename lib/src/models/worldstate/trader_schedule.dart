import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trader_schedule.g.dart';

/// {@template void_trader_schedule}
/// VoidTraderSchedule description
/// {@endtemplate}
@JsonSerializable()
class TraderSchedule extends Equatable {
  /// {@macro void_trader_schedule}
  const TraderSchedule({
    required this.expiry,
    required this.item,
  });

  /// Creates a VoidTraderSchedule from Json map
  factory TraderSchedule.fromJson(Map<String, dynamic> json) =>
      _$TraderScheduleFromJson(json);

  /// A description for expiry
  final DateTime expiry;

  /// A description for item
  final String? item;

  /// Creates a Json map from a VoidTraderSchedule
  Map<String, dynamic> toJson() => _$TraderScheduleToJson(this);

  @override
  List<Object?> get props => [expiry, item];
}
