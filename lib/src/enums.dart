import 'package:collection/collection.dart';

/// Game Platforms the API supports.
enum GamePlatform {
  /// PC.
  pc,

  /// Playstation.
  ps4,

  /// Xbox.
  xb1,

  /// Nintendo Switch.
  swi,
}

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
}

extension on Language {
  /// Returns a [Language] from a language code or null.
  // ignore: unused_element
  Language? fromLanguageCode(String languageCode) {
    return Language.values
        .firstWhereOrNull((e) => languageCode.contains(e.name));
  }
}
