import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'news.g.dart';

/// {@template news}
/// Translated news items.
///
/// Fun fact:
/// The plural and singular word for news is news.
/// {@endtemplate}
@JsonSerializable()
class News extends WorldstateObject {
  /// {@macro news}
  const News({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.date,
    required this.message,
    required this.link,
    required this.imageLink,
    required this.translations,
    required this.primeAccess,
    required this.stream,
    required this.update,
    required this.priority,
    required this.mobileOnly,
  });

  /// Creates a News from Json map
  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  /// The news title.
  final String message;

  /// Link to blog/forum post associated with the news.
  final String link;

  /// Whether the news is a priorty.
  final bool priority;

  /// Link to the image associated with the news.
  final String imageLink;

  /// The date the news was posted
  final DateTime date;

  /// Whether the current news is about a Prime Access release.
  final bool primeAccess;

  /// Whether the current news is about a stream.
  final bool stream;

  /// Whether the current news is about an update.
  final bool update;

  /// Whether or not this is a mobile only news.
  final bool mobileOnly;

  /// Contains translated version of [message]
  ///
  /// If a message contains no translations it will default to en.
  final Map<String, String> translations;

  /// Creates a Json map from a News
  Map<String, dynamic> toJson() => _$NewsToJson(this);

  @override
  List<Object?> get props {
    return [
      date,
      imageLink,
      primeAccess,
      stream,
      translations,
      link,
      update,
      message,
      priority,
      mobileOnly,
    ];
  }
}
