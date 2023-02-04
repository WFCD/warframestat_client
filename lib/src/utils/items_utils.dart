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

  // Only need this to seprate items that share the same category.
  final productCategory = item['productCategory'] as String?;

  if (category == ItemCategories.warframes) {
    // NecroMechs and Warframes are stored with the same cateogry so we need to
    // filter by productCateogry here.
    if (productCategory == 'MechSuits') return NecroMech.fromJson(item);

    return Warframe.fromJson(item);
  }

  if (category == ItemCategories.melee ||
      category == ItemCategories.archMelee) {
    return Melee.fromJson(item);
  }

  if (category == ItemCategories.primary ||
      category == ItemCategories.archGun) {
    return Primary.fromJson(item);
  }

  if (category == 'Resources') {
    return isBuildable
        ? ResourceBuildable.fromJson(item)
        : Resource.fromJson(item);
  }

  if (category == ItemCategories.skins) {
    return isBuildable ? SkinBuildable.fromJson(item) : Skin.fromJson(item);
  }

  if (category == ItemCategories.gear) {
    return isBuildable ? GearBuildable.fromJson(item) : Gear.fromJson(item);
  }

  if (category == ItemCategories.mods) {
    // Mod sets and mods are two different json structures.
    if (item['type'] as String == 'Mod Set Mod') return ModSet.fromJson(item);

    return Mod.fromJson(item);
  }

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
    case ItemCategories.secondary:
      return Secondary.fromJson(item);
    default:
      return Misc.fromJson(item);
  }
}
