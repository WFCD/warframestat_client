import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/worldstate/calendar.dart';

/// {@template calendar_event_converter}
/// Caonverts the calendar event type to a matching class
/// {@endtemplate}
class CalendarEventConverter extends JsonConverter<CalendarEvent, Map<String, dynamic>> {
  /// {@macro calendar_event_converter}
  const CalendarEventConverter();

  @override
  CalendarEvent fromJson(Map<String, dynamic> json) {
    final type = (json['type'] as String).toLowerCase();

    return switch (type) {
      'birthday' => CalendarBirthday.fromJson(json),
      'to do' => CalendarChallenge.fromJson(json),
      'override' => CalendarUpgrade.fromJson(json),
      'big prize!' => CalendarReward.fromJson(json),
      _ => throw Exception('$type is not a valid calendar event'),
    };
  }

  @override
  Map<String, dynamic> toJson(CalendarEvent object) {
    return object.toJson();
  }
}
