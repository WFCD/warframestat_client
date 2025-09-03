import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'global_upgrade.g.dart';

/// {@template global_upgrade}
/// GlobalUpgrade description
/// {@endtemplate}
@JsonSerializable()
class GlobalUpgrade extends Equatable {
  /// {@macro global_upgrade}
  const GlobalUpgrade({
    required this.upgrade,
    required this.operation,
    required this.operationSymbol,
    required this.upgradeOperationValue,
  });

  /// Creates a GlobalUpgrade from Json map
  factory GlobalUpgrade.fromJson(Map<String, dynamic> json) => _$GlobalUpgradeFromJson(json);

  /// A description for upgrade
  final String upgrade;

  /// A description for operation
  final String operation;

  /// A description for opeerationSymbol
  final String operationSymbol;

  /// A description for upgradeOperationValue
  final int upgradeOperationValue;

  /// Creates a Json map from a GlobalUpgrade
  Map<String, dynamic> toJson() => _$GlobalUpgradeToJson(this);

  @override
  List<Object> get props {
    return [upgrade, operation, operationSymbol, upgradeOperationValue];
  }
}
