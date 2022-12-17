import 'package:warframestat_client/warframestat_client.dart';

/// Converts a json decoded list into [Item] objects
List<Item> toBaseItems(List<dynamic> data) {
  return data
      .map((e) => Map<String, dynamic>.from(e as Map))
      .map(toBaseItem)
      .toList();
}

/// Serializes giving json values into their proper [Item] type
Item toBaseItem(Map<String, dynamic> item) {
  final category = item['category'] as String;
  final isBuildable = item['components'] != null;

  // Only need this to seprate items that share the same category.
  final productCategory = item['productCategory'] as String?;

  if (category == 'Warframes') {
    if (productCategory == 'MechSuits') return NecroMech.fromJson(item);

    return Warframe.fromJson(item);
  }

  if (category == 'Melee' || category == 'Arch-Melee') {
    return Melee.fromJson(item);
  }

  if (category == 'Primary' || category == 'Arch-Gun') {
    return Primary.fromJson(item);
  }

  if (category == 'Resources') {
    return isBuildable
        ? ResourceBuildable.fromJson(item)
        : Resource.fromJson(item);
  }

  if (category == 'Skins') {
    return isBuildable ? SkinBuildable.fromJson(item) : Skin.fromJson(item);
  }

  if (category == 'Gear') {
    return isBuildable ? GearBuildable.fromJson(item) : Gear.fromJson(item);
  }

  if (category == 'Mods') {
    if (item['type'] as String == 'Mod Set Mod') return ModSet.fromJson(item);

    return Mod.fromJson(item);
  }

  switch (category) {
    case 'Arcanes':
      return Arcane.fromJson(item);
    case 'Archwing':
      return Archwing.fromJson(item);
    case 'Fish':
      return Fish.fromJson(item);
    case 'Gear':
      return Gear.fromJson(item);
    case 'Glyphs':
      return Glyph.fromJson(item);
    case 'Misc':
      return Misc.fromJson(item);
    case 'Node':
      return Node.fromJson(item);
    case 'Quests':
      return Quest.fromJson(item);
    case 'Relics':
      return Relic.fromJson(item);
    case 'Pet Resource':
      return PetResource.fromJson(item);
    case 'Sigils':
      return Sigil.fromJson(item);
    case 'Secondary':
      return Secondary.fromJson(item);
    default:
      return Misc.fromJson(item);
  }
}
