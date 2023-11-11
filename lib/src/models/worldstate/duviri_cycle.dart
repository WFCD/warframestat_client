import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'duviri_cycle.g.dart';

/// {template duviri_cycle}
/// Date on the current state of Duviri.
/// {@endtemplate}
@JsonSerializable()
class DuviriCycle extends WorldstateObject {
  /// {@macro duviri_cycle}
  const DuviriCycle({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.state,
    required this.choices,
  });

  /// Creates a [DuviriCycle] object from json.
  factory DuviriCycle.fromJson(Map<String, dynamic> json) {
    return _$DuviriCycleFromJson(json);
  }

  /// The current running cycle on Duviri.
  final String state;

  /// Weapon and/or Warframe choices for the current cycle.
  final List<Choice> choices;

  /// Creates a json from a [DuviriCycle] object.
  Map<String, dynamic> toJson() => _$DuviriCycleToJson(this);

  @override
  List<Object?> get props => super.props..addAll([state, choices]);
}

/// {@template choice}
/// Choice data for the current Duviri state.
/// {@endtemplate}
@JsonSerializable()
class Choice extends Equatable {
  /// {@macro choice}
  const Choice({
    required this.category,
    required this.categoryKey,
    required this.choices,
  });

  /// Creates a [Choice] object from json.
  factory Choice.fromJson(Map<String, dynamic> json) {
    return _$ChoiceFromJson(json);
  }

  /// The choice category.
  final String category;

  /// The category key.
  final String categoryKey;

  /// The available choices.
  final List<String> choices;

  /// Creates a json from a [Choice] object.
  Map<String, dynamic> toJson() => _$ChoiceToJson(this);

  @override
  List<Object?> get props => [category, categoryKey, choices];
}
