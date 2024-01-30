import 'package:warframestat_client/warframestat_client.dart';

/// Converts search items to a list of [MinimalItem]s.
List<MinimalItem> toSearchItems(List<dynamic> data) {
  return data
      .map((e) => Map<String, dynamic>.from(e as Map))
      .map(MinimalItem.fromJson)
      .toList();
}

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

  switch (ItemCategory.byCategory(category)) {
    case ItemCategory.arcanes:
      return Arcane.fromJson(item);
    case ItemCategory.archwing:
      return Archwing.fromJson(item);
    case ItemCategory.fish:
      return Fish.fromJson(item);
    case ItemCategory.glyphs:
      return Glyph.fromJson(item);
    case ItemCategory.node:
      return Node.fromJson(item);
    case ItemCategory.quests:
      return Quest.fromJson(item);
    case ItemCategory.relics:
      return Relic.fromJson(item);
    case ItemCategory.petResource:
      return PetResource.fromJson(item);
    case ItemCategory.sigils:
      return Sigil.fromJson(item);
    case ItemCategory.primary || ItemCategory.archGun:
      return Primary.fromJson(item);
    case ItemCategory.secondary:
      return Secondary.fromJson(item);
    case ItemCategory.melee || ItemCategory.archMelee:
      return Melee.fromJson(item);
    case ItemCategory.sentinels:
      return Sentinel.fromJson(item);
    case ItemCategory.resources:
      return isBuildable
          ? ResourceBuildable.fromJson(item)
          : Resource.fromJson(item);

    case ItemCategory.skins:
      return isBuildable ? SkinBuildable.fromJson(item) : Skin.fromJson(item);

    case ItemCategory.gear:
      return isBuildable ? GearBuildable.fromJson(item) : Gear.fromJson(item);

    case ItemCategory.mods:
      // Mod sets and mods are two different json structures.
      if (item['type'] as String == 'Mod Set Mod') return ModSet.fromJson(item);

      return Mod.fromJson(item);
    case ItemCategory.warframes:
      // NecroMechs and Warframes are stored with the same cateogry so we need
      // to filter by productCateogry here.
      final productCategory = item['productCategory'] as String;
      if (productCategory == 'MechSuits') return NecroMech.fromJson(item);

      return Warframe.fromJson(item);

    case ItemCategory.misc || _:
      return Misc.fromJson(item);
  }
}
