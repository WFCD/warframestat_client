import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

/// Supported languages.
enum Language {
  /// Germany.
  de,

  /// Spanish.
  es,

  /// French.
  fr,

  /// Italian.
  it,

  /// Korean.
  ko,

  /// Polish.
  pl,

  /// Portuguese.
  pt,

  /// Russian.
  ru,

  /// Chinese
  zh,

  /// English.
  en,

  /// Turkey
  tr,

  /// Serbian
  sr,

  /// Czech
  cs,

  /// United Kingdowm
  uk,

  /// Japanese
  ja,

  /// Traditional Chines
  tc,

  /// Thai
  th,
}

extension on Language {
  /// Returns a [Language] from a language code or null.
  // ignore: unused_element
  Language? fromLanguageCode(String languageCode) {
    return Language.values.firstWhereOrNull((e) => languageCode.contains(e.name));
  }
}

/// How rare an [Item] drops.
@JsonEnum(fieldRename: FieldRename.pascal)
enum Rarity {
  /// [Item] drops commonly.
  common,

  /// [Item] drop is uncommon.
  uncommon,

  /// [Item] drop is harder to come by.
  rare,

  /// [Item] wow... that's shiny.
  legendary,
}
