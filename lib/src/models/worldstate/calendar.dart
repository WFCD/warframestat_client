import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/worldstate/worldstate_object.dart';
import 'package:warframestat_client/src/utils/calendar_event_converter.dart';

part 'calendar.g.dart';

/// {@template calendar}
/// Date on the current hex season and time loop
/// {@endtemplate}
@JsonSerializable()
class Calendar extends WorldstateObject {
  /// {@macro calendar}
  const Calendar({
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.days,
    required this.season,
    required this.yearIteration,
    required this.version,
    required this.requirements,
  });

  /// Creates a [Calendar] from Json map
  factory Calendar.fromJson(Map<String, dynamic> json) => _$CalendarFromJson(json);

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  /// Events and rewards for the given season
  final List<CalendarDay> days;

  /// Current season
  final String season;

  /// Current loop number
  final int yearIteration;

  /// No idea
  final int version;

  /// Quest requirement
  final List<String> requirements;

  /// Creates a json map from a [Calendar].
  Map<String, dynamic> toJson() => _$CalendarToJson(this);

  @override
  List<Object?> get props => [activation, expiry, days, season, yearIteration, version, requirements];
}

/// {@template calendar_day}
/// A day in the current [Calendar] cycle
/// {@endtemplate}
@JsonSerializable()
class CalendarDay {
  /// {@macro calendar_day}
  CalendarDay({required this.day, required this.events});

  /// Creates a [CalendarDay] from Json map
  factory CalendarDay.fromJson(Map<String, dynamic> json) => _$CalendarDayFromJson(json);

  /// The day (relative to 1999)
  final int day;

  /// Events or rewards for the given [day]
  @CalendarEventConverter()
  final List<CalendarEvent> events;

  /// A timestamp of the [day] (relative to 1999)
  DateTime get date => DateTime.utc(1999).add(Duration(days: day - 1));

  /// Creates a json map from a [CalendarDay].
  Map<String, dynamic> toJson() => _$CalendarDayToJson(this);
}

/// {@template calendar_event}
/// Events for the given [CalendarDay]
/// {@endtemplate}

sealed class CalendarEvent {
  /// {@macro calendar_event}
  CalendarEvent({required this.type});

  /// Type of event
  final String type;

  /// Creates a json map from a [CalendarEvent].
  Map<String, dynamic> toJson();
}

/// {@macro calendar_event}
@JsonSerializable()
final class CalendarChallenge extends CalendarEvent {
  /// {@macro calendar_event}
  CalendarChallenge({required super.type, required this.challenge});

  /// Creates a [CalendarChallenge] from Json map
  factory CalendarChallenge.fromJson(Map<String, dynamic> json) => _$CalendarChallengeFromJson(json);

  /// Challenge title and description
  final ({String title, String description}) challenge;

  /// Creates a json map from a [CalendarChallenge].
  @override
  Map<String, dynamic> toJson() => _$CalendarChallengeToJson(this);
}

/// {@macro calendar_event}
@JsonSerializable()
final class CalendarUpgrade extends CalendarEvent {
  /// {@macro calendar_event}
  CalendarUpgrade({required super.type, required this.upgrade});

  /// Creates a [CalendarEvent] from Json map
  factory CalendarUpgrade.fromJson(Map<String, dynamic> json) => _$CalendarUpgradeFromJson(json);

  /// Upgrade title and description
  final ({String title, String description}) upgrade;

  /// Creates a json map from a [CalendarChallenge].
  @override
  Map<String, dynamic> toJson() => _$CalendarUpgradeToJson(this);
}

/// {@macro calendar_event}
@JsonSerializable()
final class CalendarReward extends CalendarEvent {
  /// {@macro calendar_event}
  CalendarReward({required super.type, required this.reward});

  /// Creates a [CalendarEvent] from Json map
  factory CalendarReward.fromJson(Map<String, dynamic> json) => _$CalendarRewardFromJson(json);

  /// Reward name
  final String reward;

  /// Creates a json map from a [CalendarChallenge].
  @override
  Map<String, dynamic> toJson() => _$CalendarRewardToJson(this);
}

/// {@macro calendar_event}
@JsonSerializable()
final class CalendarBirthday extends CalendarEvent {
  /// {@macro calendar_event}
  CalendarBirthday({required super.type, required this.name, required this.conversation});

  /// Creates a [CalendarEvent] from Json map
  factory CalendarBirthday.fromJson(Map<String, dynamic> json) => _$CalendarBirthdayFromJson(json);

  /// Dialogue name
  @JsonKey(name: 'dialogueName')
  final String name;

  /// Conversation name
  @JsonKey(name: 'dialogueConvo')
  final String conversation;

  /// Creates a json map from a [CalendarChallenge].
  @override
  Map<String, dynamic> toJson() => _$CalendarBirthdayToJson(this);
}
