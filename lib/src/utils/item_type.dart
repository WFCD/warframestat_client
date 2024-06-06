/// Item cateogry types.
enum ItemType {
  /// Warframe category.
  warframes('Warframe'),

  /// Melee category.
  melee('Melee'),

  /// Arch-Melee category.
  archMelee('Arch-Melee'),

  /// Arch-Gun category.
  archGun('Arch-Gun'),

  /// Resource category.
  resources('Resource'),

  /// Skins category.
  skin('Skin'),

  /// Gear category.
  gear('Gear'),

  /// Arcanes category.
  arcanes('Arcane'),

  /// Archwing category.
  archwing('Archwing'),

  /// Fish category.
  fish('Fish'),

  /// Glyphs category.
  glyphs('Glyph'),

  /// Misc category.
  misc('Misc'),

  /// Node category.
  node('Node'),

  /// Quests category.
  quests('Quest'),

  /// Relics category.
  relics('Relic'),

  /// Pet Resource category.
  petResource('Pet Resource'),

  /// Sigils category.
  sigils('Sigil'),

  /// Pets category.
  pets('Pets'),

  /// Sentinel category.
  sentinels('Sentinel'),

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
  companionMod('Companion Mod'),

  /// Mods for Archwing
  archwingMod('Archwing Mod'),

  /// Arch-Melee Mod
  archMeleeMod('Arch-Melee Mod'),

  /// Arch-Gun Mod
  archGunMod('Arch-Gun Mod'),

  /// Stance Mod
  stanceMod('Stance Mod'),

  /// Parazon Mod
  parazonMod('Parazon Mod'),

  /// K-Drive Mod
  kDriveMod('K-Drive Mod'),

  /// Melee Mod
  meleeMod('Melee Mod'),

  /// Peculiar Mod
  peculiarMod('Peculiar Mod'),

  /// Companion Weapon Riven Mod
  companionWeaponRiven('Companion Weapon Riven Mod'),

  /// Arch-Gun Riven Mod
  archGunRiven('Arch-Gun Riven Mod'),

  /// Rifle Riven Mod
  rifleRiven('Rifle Riven Mod'),

  /// Pistol Riven Mod
  pistolRiven('Pistol Riven Mod'),

  /// Shotgun Riven Mod
  shotgunRiven('Shotgun Riven Mod'),

  /// Melee Riven Mod
  meleeRiven('Melee Riven Mod'),

  /// Kitgun Riven Mod
  kitgunRiven('Kitgun Riven Mod'),

  /// Zaw Riven Mod
  zawRiven('Zaw Riven Mod'),

  /// Riven Mod
  rivenMod('Riven Mod'),

  /// Shotgun
  shotgun('Shotgun'),

  /// Rifles
  rifle('Rifle'),

  /// Pistols
  pistol('Pistol'),

  /// Companion weapon
  companionWeapon('Companion Weapon'),

  /// Dual Pistols
  dualPistols('Dual Pistols'),

  /// Throwing weapons
  throwing('Throwing'),

  /// Amp
  amp('Amp'),

  /// K-Drive Component
  kDriveComponent('K-Drive Component'),

  /// Zaw Component
  zawComponent('Zaw Component');

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
