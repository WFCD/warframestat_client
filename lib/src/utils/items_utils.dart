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
  var type = item['type'] as String;
  final category = item['category'] as String;
  final isBuildable = item['components'] != null;

  if (!type.contains(category)) {
    type = category;
  }

  switch (ItemType.byType(type)) {
    case ItemType.arcanes:
      return Arcane.fromJson(item);
    case ItemType.archwing:
      return Archwing.fromJson(item);
    case ItemType.fish:
      return Fish.fromJson(item);
    case ItemType.glyphs:
      return Glyph.fromJson(item);
    case ItemType.node:
      return Node.fromJson(item);
    case ItemType.quests:
      return Quest.fromJson(item);
    case ItemType.relics:
      return Relic.fromJson(item);
    case ItemType.petResource:
      return PetResource.fromJson(item);
    case ItemType.sigils:
      return Sigil.fromJson(item);
    case ItemType.primary || ItemType.archGun:
      return Primary.fromJson(item);
    case ItemType.secondary:
      return Secondary.fromJson(item);
    case ItemType.melee || ItemType.archMelee:
      return Melee.fromJson(item);
    case ItemType.sentinels:
      return isBuildable
          ? SentinelBuildable.fromJson(item)
          : Sentinel.fromJson(item);
    case ItemType.resources:
      return isBuildable
          ? ResourceBuildable.fromJson(item)
          : Resource.fromJson(item);

    case ItemType.skins:
      return isBuildable ? SkinBuildable.fromJson(item) : Skin.fromJson(item);

    case ItemType.gear:
      return isBuildable ? GearBuildable.fromJson(item) : Gear.fromJson(item);

    case ItemType.mods:
      // Mod sets and mods are two different json structures.
      if (item['type'] as String == 'Mod Set Mod') return ModSet.fromJson(item);

      return Mod.fromJson(item);
    case ItemType.warframes:
      // NecroMechs and Warframes are stored with the same cateogry so we need
      // to filter by productCateogry here.
      final productCategory = item['productCategory'] as String;
      if (productCategory == 'MechSuits') return NecroMech.fromJson(item);

      return Warframe.fromJson(item);

    case ItemType.misc || _:
      return Misc.fromJson(item);
  }
}
