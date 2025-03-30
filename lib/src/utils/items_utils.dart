import 'package:warframestat_client/src/models/warframe_items/helminth.dart';
import 'package:warframestat_client/warframestat_client.dart';

// Sometimes types are wrong in warframe-items, so use this as a temp fix until it's fixed upstream
// Only use uniqueName to match overrides as this keeps it strict
const _overrides = <String, String>{'/Lotus/Types/Items/MiscItems/CodaWeaponBucks': 'Misc'};

/// Converts search items to a list of [MinimalItem]s.
List<MinimalItem> toSearchItems(List<dynamic> data) {
  return data.map((e) => Map<String, dynamic>.from(e as Map)).map(MinimalItem.fromJson).toList();
}

/// Converts a json decoded list into [Item] objects
List<Item> toItems(List<dynamic> data, {bool minimal = false}) {
  return data
      .map((e) => Map<String, dynamic>.from(e as Map))
      .map((i) => minimal ? MinimalItem.fromJson(i) : toItem(i))
      .toList();
}

/// Serializes giving json values into their proper [Item] type
Item toItem(Map<String, dynamic> item) {
  final name = item['name'] as String;
  final uniqueName = item['uniqueName'];
  final category = item['category'] as String;
  final isBuildable = item['components'] != null;

  var type = item['type'] as String;
  if (_overrides.containsKey(uniqueName)) type = _overrides[uniqueName]!;

  if (name == 'Venari' || name == 'Venari Prime') {
    item['type'] = 'Pets';
    return Pet.fromJson(item);
  }

  if (category == 'Enemy') return Enemy.fromJson(item);
  if (name.contains('Arcane')) return Arcane.fromJson(item);
  if (name.contains('Gravimag')) return ResourceBuildable.fromJson(item);
  if (type.contains('Mod')) return Mod.fromJson(item);
  if ((item['uniqueName'] as String).contains(RegExp('MoaPetParts|ZanukaPetParts'))) {
    type = 'Pet Resource';
  }

  switch (ItemType.byType(type)) {
    case ItemType.amp:
      return Amp.fromJson(item);
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
    case ItemType.pets:
      return Pet.fromJson(item);
    case ItemType.petResource:
      return isBuildable ? PetResourcesBuildable.fromJson(item) : PetResources.fromJson(item);

    case ItemType.sigils:
      return Sigil.fromJson(item);

    case ItemType.rifle:
    case ItemType.archGun:
    case ItemType.shotgun:
      return Primary.fromJson(item);

    case ItemType.pistol:
    case ItemType.dualPistols:
    case ItemType.throwing:
    case ItemType.zawComponent:
    case ItemType.kDriveComponent:
      return Secondary.fromJson(item);

    case ItemType.melee:
    case ItemType.archMelee:
      return Melee.fromJson(item);

    case ItemType.sentinels:
      return isBuildable ? SentinelBuildable.fromJson(item) : Sentinel.fromJson(item);

    case ItemType.resources:
      return isBuildable ? ResourceBuildable.fromJson(item) : Resource.fromJson(item);

    case ItemType.skin:
      return isBuildable ? SkinBuildable.fromJson(item) : Skin.fromJson(item);

    case ItemType.gear:
      return isBuildable ? GearBuildable.fromJson(item) : Gear.fromJson(item);

    case ItemType.warframes:
      // NecroMechs and Warframes are stored with the same cateogry so we need
      // to filter by productCateogry here.
      final productCategory = item['productCategory'] as String?;
      if (productCategory == 'MechSuits') return Necramech.fromJson(item);
      if (name == 'Helminth') return Helminth.fromJson(item);

      return Warframe.fromJson(item);
    case ItemType.companionWeapon:
      return SentinelWeapon.fromJson(item);
    case _:
      return Misc.fromJson(item);
  }
}
