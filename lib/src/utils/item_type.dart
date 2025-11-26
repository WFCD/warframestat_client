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
  glyph('Glyph'),

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
  zawComponent('Zaw Component'),

  /// Kitgun Component
  kitGunComponent('Kitgun Component')
  ;

  const ItemType(this.type);

  /// Item Category name.
  final String type;

  /// Returns an [ItemType] from an Item type.
  static ItemType byType(String type) {
    return ItemType.values.firstWhere((v) => v.type == type, orElse: () => ItemType.misc);
  }

  /// Whether the type is a primary weapon or not
  bool get isPrimary => this == ItemType.rifle || this == ItemType.shotgun;

  /// Whether the type is a secondary weapon or not
  bool get isSecondary =>
      this == ItemType.pistol ||
      this == ItemType.dualPistols ||
      this == ItemType.kitGunComponent ||
      this == ItemType.throwing;

  /// Whether the type is a melee weapon or not
  bool get isMelee => this == ItemType.zawComponent || this == ItemType.melee;

  /// Whether the type is a weapon or not
  bool get isWeapon =>
      isPrimary ||
      isSecondary ||
      isMelee ||
      this == ItemType.amp ||
      this == ItemType.companionWeapon ||
      this == ItemType.archGun ||
      this == ItemType.archMelee;

  /// Whether or not this item is a mod.
  bool get isMod => name.contains('Mod');
}
