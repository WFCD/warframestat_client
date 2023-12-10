import 'package:warframestat_client/warframestat_client.dart';

/// Converts a json decoded list into [Item] objects
List<Item> toItems(List<dynamic> data) {
  return data
      .map((e) => Map<String, dynamic>.from(e as Map))
      .map(toItem)
      .toList();
}

/// Serializes giving json values into their proper [Item] type
Item toItem(Map<String, dynamic> item) {
  final category = item['category'] as String;
  final isBuildable = item['components'] != null;

  switch (category) {
    case ItemCategories.arcanes:
      return Arcane.fromJson(item);
    case ItemCategories.archwing:
      return Archwing.fromJson(item);
    case ItemCategories.fish:
      return Fish.fromJson(item);
    case ItemCategories.glyphs:
      return Glyph.fromJson(item);
    case ItemCategories.node:
      return Node.fromJson(item);
    case ItemCategories.quest:
      return Quest.fromJson(item);
    case ItemCategories.relics:
      return Relic.fromJson(item);
    case ItemCategories.petResource:
      return PetResource.fromJson(item);
    case ItemCategories.sigils:
      return Sigil.fromJson(item);
    case ItemCategories.primary || ItemCategories.archGun:
      return Primary.fromJson(item);
    case ItemCategories.secondary:
      return Secondary.fromJson(item);

    case ItemCategories.melee || ItemCategories.archMelee:
      return Melee.fromJson(item);

    case ItemCategories.resources:
      return isBuildable
          ? ResourceBuildable.fromJson(item)
          : Resource.fromJson(item);

    case ItemCategories.skins:
      return isBuildable ? SkinBuildable.fromJson(item) : Skin.fromJson(item);

    case ItemCategories.gear:
      return isBuildable ? GearBuildable.fromJson(item) : Gear.fromJson(item);

    case ItemCategories.mods:
      // Mod sets and mods are two different json structures.
      if (item['type'] as String == 'Mod Set Mod') return ModSet.fromJson(item);

      return Mod.fromJson(item);
    case ItemCategories.warframes:
      // NecroMechs and Warframes are stored with the same cateogry so we need
      // to filter by productCateogry here.
      final productCategory = item['productCategory'] as String;
      if (productCategory == 'MechSuits') return NecroMech.fromJson(item);

      return Warframe.fromJson(item);

    default:
      return Misc.fromJson(item);
  }
}
