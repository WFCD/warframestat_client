/// Item cateogry types.
enum ItemType {
  /// Warframe category.
  warframes('Warframe'),

  /// Melee category.
  melee('Melee'),

  /// Arch-Melee category.
  archMelee('Arch-Melee'),

  /// Primary category.
  primary('Primary'),

  /// Arch-Gun category.
  archGun('Arch-Gun'),

  /// Resource category.
  resources('Resources'),

  /// Skins category.
  skins('Skins'),

  /// Gear category.
  gear('Gear'),

  /// Mods category.
  mods('Mods'),

  /// Arcanes category.
  arcanes('Arcanes'),

  /// Archwing category.
  archwing('Archwing'),

  /// Fish category.
  fish('Fish'),

  /// Glyphs category.
  glyphs('Glyphs'),

  /// Misc category.
  misc('Misc'),

  /// Node category.
  node('Node'),

  /// Quests category.
  quests('Quests'),

  /// Relics category.
  relics('Relics'),

  /// Pet Resource category.
  petResource('Pet Resource'),

  /// Sigils category.
  sigils('Sigils'),

  /// Secondary category.
  secondary('Secondary'),

  /// Pets category.
  pets('Pets'),

  /// Sentinel category.
  sentinels('Sentinels'),

  /// Necramech Mod
  necramechMod('Necramech Mod'),

  /// Mods for primary weapons
  primaryMod('Primary Mod'),

  /// Mods for secondary weapons
  secondaryMod('Secondary Mod'),

  /// Mods for Warframes.
  warframeMod('Warframe Mod'),

  /// Mods for shotguns.
  shotGunMod('Shotgun Mod'),

  /// Mods for companions.
  companionMod('Companion Mod');

  const ItemType(this.category);

  /// Item Category name.
  final String category;

  /// Returns an [ItemType] from an Item type.
  static ItemType byType(String name) {
    try {
      return ItemType.values.firstWhere((v) => v.category == name);
    } catch (e) {
      return ItemType.misc;
    }
  }
}
