import 'package:warframestat_client/warframestat_client.dart';

/// {@template companion}
/// Base companion class from which all pets and sentinel derive from
/// {@endtemplate}
abstract class Companion extends ItemCommon {
  /// {@macro companion}
  const Companion({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.patchlogs,
    required super.imageName,
    required super.tradable,
    required super.releaseDate,
    required super.excludeFromCodex,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  });
}
