## [3.14.1](https://github.com/WFCD/warframestat_client/compare/v3.14.0...v3.14.1) (2024-12-03)


### Bug Fixes

* `kitgunRiven` are not secondary weapons ([7858224](https://github.com/WFCD/warframestat_client/commit/78582244a46c304ede7a2e14fb6f56c73df10c1e))

# [3.14.0](https://github.com/WFCD/warframestat_client/compare/v3.13.2...v3.14.0) (2024-12-03)


### Bug Fixes

* `fetchAll` functions were still returning the full item ([d6342fe](https://github.com/WFCD/warframestat_client/commit/d6342fe470b35882a3e77641edaab2661d74fed1))


### Features

* optional ability to return all items as `MinimalItem` ([33ba7de](https://github.com/WFCD/warframestat_client/commit/33ba7de9d0baac9059d7aae3acb799ab9370b49d))

## [3.13.2](https://github.com/WFCD/warframestat_client/compare/v3.13.1...v3.13.2) (2024-12-02)


### Bug Fixes

* `XpItem.item` is no longer required ([e3751a0](https://github.com/WFCD/warframestat_client/commit/e3751a000ba5bab19352c7e9f247ffe3d15f3b5a))

## [3.13.1](https://github.com/WFCD/warframestat_client/compare/v3.13.0...v3.13.1) (2024-12-02)


### Bug Fixes

* remove patchlogs from `MinimalItem` constructor ([ee06056](https://github.com/WFCD/warframestat_client/commit/ee06056ca5f98c32309f391b682324bd0d57e403))

# [3.13.0](https://github.com/WFCD/warframestat_client/compare/v3.12.0...v3.13.0) (2024-12-02)


### Features

* `fetchAllWeapons` and `fetchAllWarframes` can now return `MinimalItem` ([5f3a0d3](https://github.com/WFCD/warframestat_client/commit/5f3a0d345036ac7b5c23211874cdecaf0f529240))

# [3.12.0](https://github.com/WFCD/warframestat_client/compare/v3.11.0...v3.12.0) (2024-12-02)


### Features

* add `isPrimary`, `isSecondary`, `isMelee`, and `isWeapon` to `ItemType` ([d3c59c2](https://github.com/WFCD/warframestat_client/commit/d3c59c2a086e189b1a2b0548135cfa1b1c3a441d))

# [3.11.0](https://github.com/WFCD/warframestat_client/compare/v3.10.1...v3.11.0) (2024-11-13)


### Bug Fixes

* parse Helminth into it's own type ([d3a4d35](https://github.com/WFCD/warframestat_client/commit/d3a4d352afd0d210584b72f8519f597e690ad08f))


### Features

* add `imageName` to `Ability` ([8080de6](https://github.com/WFCD/warframestat_client/commit/8080de6a2a8376aa034ac76211d6ee1d65ea1864))

## [3.10.1](https://github.com/WFCD/warframestat_client/compare/v3.10.0...v3.10.1) (2024-10-16)


### Bug Fixes

* deep archimedea may be nullable between rotations ([ccf0c67](https://github.com/WFCD/warframestat_client/commit/ccf0c671ab0c30b1cf423f3d92565b745dbc5833))

# [3.10.0](https://github.com/WFCD/warframestat_client/compare/v3.9.0...v3.10.0) (2024-10-15)


### Bug Fixes

* **profile:** change `space` to `railjack` ([ed69277](https://github.com/WFCD/warframestat_client/commit/ed692770323c7b5a5707bf10e1f108fcef8c1ed8))


### Features

* **worldstate:** add Deep Archimedea models ([4f137d1](https://github.com/WFCD/warframestat_client/commit/4f137d1da0abd6f1a63620a7a00aa7ccf358c905))
* **worldstate:** add kinepage model ([0711415](https://github.com/WFCD/warframestat_client/commit/0711415d009ab83fb256cb07f0f0ec87f947aa5b))

# [3.9.0](https://github.com/WFCD/warframestat_client/compare/v3.8.11...v3.9.0) (2024-07-26)


### Features

* **profile:** add nodeKey to mission nodes ([9e13a08](https://github.com/WFCD/warframestat_client/commit/9e13a08a6e40b9ac637ac5a72d6a14e2cebc3673))

## [3.8.11](https://github.com/WFCD/warframestat_client/compare/v3.8.10...v3.8.11) (2024-06-25)


### Bug Fixes

* `Arbitration.id` can actually be null when there is no current mission ([3fb69df](https://github.com/WFCD/warframestat_client/commit/3fb69df7ccc652104279d83c25d6b1e811beb3bd))
* `ItemConfig.skins` is not nullable ([ab7bf29](https://github.com/WFCD/warframestat_client/commit/ab7bf298d873e77543c8675681d672a4ae1d2248))
* mark `Venari` & `Venari Prime` as Pets ([28b6153](https://github.com/WFCD/warframestat_client/commit/28b61536522c89cdbce56410b478adfd2b196360))

## [3.8.10](https://github.com/WFCD/warframestat_client/compare/v3.8.9...v3.8.10) (2024-06-06)


### Bug Fixes

* **warframe-items:** added more missing ItemTypes and corrected some type parsing for `Profile.loadout.xpInfo` ([6011c40](https://github.com/WFCD/warframestat_client/commit/6011c40c084316dd5c5ff2f85b75b9cb97c23e99))

## [3.8.9](https://github.com/WFCD/warframestat_client/compare/v3.8.8...v3.8.9) (2024-06-03)


### Bug Fixes

* add missing `maxLevelCap` to `Weapon` ([d8dc263](https://github.com/WFCD/warframestat_client/commit/d8dc26304c322b7142295c253fe7eb966029f76c))

## [3.8.8](https://github.com/WFCD/warframestat_client/compare/v3.8.7...v3.8.8) (2024-05-30)


### Bug Fixes

* **warframe-items:** warframe and weapon endpoints were incorrect ([866941e](https://github.com/WFCD/warframestat_client/commit/866941eec6dae0c1dd5b3920077951533670d4a4))

## [3.8.7](https://github.com/WFCD/warframestat_client/compare/v3.8.6...v3.8.7) (2024-05-30)


### Bug Fixes

* rare occurance where `ArsenalItem.feature` and `ArsenalItem.polarized` can be null ([132106c](https://github.com/WFCD/warframestat_client/commit/132106c2ac4e6e437498cdc52dfdf83c8c73c6f9))

## [3.8.6](https://github.com/WFCD/warframestat_client/compare/v3.8.5...v3.8.6) (2024-05-26)


### Bug Fixes

* pass `lanugage` and `client` to `ProfileClient` ([8f1a9df](https://github.com/WFCD/warframestat_client/commit/8f1a9df72d7c074adf1fa6ad1b66df491dee712a))

## [3.8.5](https://github.com/WFCD/warframestat_client/compare/v3.8.4...v3.8.5) (2024-05-26)


### Bug Fixes

* lower the websocket ping time ([0c7d637](https://github.com/WFCD/warframestat_client/commit/0c7d637c97fdc25b1c3adb8da1b04ad196f1eb97))

## [3.8.4](https://github.com/WFCD/warframestat_client/compare/v3.8.3...v3.8.4) (2024-05-24)


### Bug Fixes

* API no longer uses what would be `ProfileData` ([8e2b155](https://github.com/WFCD/warframestat_client/commit/8e2b1550529ddd8d7d82e4ec1444be687b018fca))

## [3.8.3](https://github.com/WFCD/warframestat_client/compare/v3.8.2...v3.8.3) (2024-05-21)


### Bug Fixes

* force release ([1ca611a](https://github.com/WFCD/warframestat_client/commit/1ca611a9a495e8844d035fb25bb452b422bab4fd))

## [3.8.2](https://github.com/WFCD/warframestat_client/compare/v3.8.1...v3.8.2) (2024-05-21)


### Bug Fixes

* swap List<String> with List<ArsenalSkin> for operator loadouts ([006fea1](https://github.com/WFCD/warframestat_client/commit/006fea117fc051b75adf6a269ce0966d32bf109a))

## [3.8.1](https://github.com/WFCD/warframestat_client/compare/v3.8.0...v3.8.1) (2024-05-20)


### Bug Fixes

* parse as `Misc` when an item fails to parse ([69bd57c](https://github.com/WFCD/warframestat_client/commit/69bd57c59709ceb9e1e33484585afb6d8301f715))

# [3.8.0](https://github.com/WFCD/warframestat_client/compare/v3.7.0...v3.8.0) (2024-05-19)


### Features

* add support for `/profiles/:username:` endpoint ([#20](https://github.com/WFCD/warframestat_client/issues/20)) ([c0e2817](https://github.com/WFCD/warframestat_client/commit/c0e281706e4c0b49b770bbee78b12b3f166ddfb0))

# [3.7.0](https://github.com/WFCD/warframestat_client/compare/v3.6.10...v3.7.0) (2024-05-10)


### Bug Fixes

* **items:** mods weren't being parsed correctly ([3e59cab](https://github.com/WFCD/warframestat_client/commit/3e59cab47b483b73348f33031fe3682eea50fc29))


### Features

* split websocket events into WarframestatWebsocket ([fe5f8b0](https://github.com/WFCD/warframestat_client/commit/fe5f8b01b8e4d90fb8cec2c6d5031986e57736b6))

## [3.6.10](https://github.com/WFCD/warframestat_client/compare/v3.6.9...v3.6.10) (2024-03-17)


### Bug Fixes

* `Venari` and `Venari Prime` being detected as Warframes ([3ed0114](https://github.com/WFCD/warframestat_client/commit/3ed0114bfed2709d9e9504be97c8af85c8ec75ee))

## [3.6.9](https://github.com/WFCD/warframestat_client/compare/v3.6.8...v3.6.9) (2024-03-17)


### Bug Fixes

* **items:** fix a typo that prevented warframes from being detected as warframes ([8d36004](https://github.com/WFCD/warframestat_client/commit/8d36004310bcd4a393153817fadd361657863ac7))

## [3.6.8](https://github.com/WFCD/warframestat_client/compare/v3.6.7...v3.6.8) (2024-03-13)

### Bug Fixes

- remove assets that are only needed for testing but not release ([421069c](https://github.com/WFCD/warframestat_client/commit/421069c952ac9d5ad5865e356a426b705a51508e))

## [3.6.6]

### Bug Fixes

- Update the way warframe-items are parsed into `Item` objects

## [3.6.5]

### Bug Fixes

- Removed `defenderReward` `attackerReward` and `defendingFaction`
- Remove `bountiesEndDate`

### Miscellaneous Tasks

- Update README
- Corrected git\_\* secrets
- Add branch name for changelog generator
- Wow I'm an idiot
- Add `WFCD` to list of approved words
- Add pubignore
- Update CHANGELOG
- Remove templates
- Readd templates
- Remove timestamp from CHANGELOG
- Update fixtures

## [3.6.4]

### Bug Fixes

- Better json to Item parsing using an item's type instead of category

### Maintenance

- Bump orhun/git-cliff-action from 2 to 3 (#18)

### Miscellaneous Tasks

- Some work on changelog and release workflows

## [3.6.3]

### Bug Fixes

- Using ping interveal to keep websocket from disconnecting

## [3.6.2]

### Bug Fixes

- Drops weren't being passed down for `Relic`

## [3.6.1]

### Bug Fixes

- `Relic` was missing properties

### Maintenance

- Bump stefanzweifel/git-auto-commit-action from 4 to 5 (#16)

### Miscellaneous Tasks

- Prepare to publish to pub.dev (#15)
- Add codeowners

### Refactor

- Remove `GamePlatform` (#17)

## [3.6.0]

### Features

- Mods now extend DroppableItem type

## [3.5.0]

### Features

- Add Necramech Mod type
- Rename `ItemCategory` to `ItemType`

## [3.4.0]

### Documentation

- Add docs for `MinimalItem.vaultDate` and `MinimailItem.vaulted`

### Features

- Use `ItemCategory` for `Item.type`
- Use type to create Items but fallback to category

## [3.3.0]

### Features

- Add `vaulted` and `vaultedDate` to MinimalItem

## [3.2.0]

### Bug Fixes

- Use secure websocket

### Features

- Use enhanced enums for Item categories
- Introduce a buildable version of the sentinel item type

### Miscellaneous Tasks

- Added some spelling words exceptions

### Styling

- Run `dart fix` and `dart format`

## [3.1.0]

### Features

- Add worldstate websocket

### Maintenance

- Bump min SDK to 3.2.0

### Miscellaneous Tasks

- Updated release workflow a bit
- Added some extra steps for validations
- Use semantic-release-pub to update pubspec
- Forgot to add `semantic-release-pub` plugin

## [3.0.1]

### Bug Fixes

- Fix typo in parameter return

## [3.0.0]

### Bug Fixes

- [**breaking**] Rename `getX` functions to `fetchX`
- [**breaking**] Rename `searchFrames` to `searchWarframes`
- [**breaking**] Rename `searchByUniqueName` to `fetchItem`

### Features

- `search` now returns a List of `MinimalItems` for faster searching

### Miscellaneous Tasks

- Fix example

### Refactor

- For better readability assign a var to `response['code']`

### Styling

- Add required comma

### Testing

- Fix test for new changes

## [2.1.1]

### Bug Fixes

- Enforce non-null super parameters

## [2.1.0]

### Bug Fixes

- Made `Alert.tag` nullable

### Features

- Move json parsing to a seperate isolate

## [2.0.1]

### Bug Fixes

- Enforce `Item.imageName` across descendants

### Miscellaneous Tasks

- Updated dev dependencies

## [2.0.0]

### Bug Fixes

- [**breaking**] Remove `CycleObject`
- Enforce `Item.imageName` even if null

### Documentation

- Typo in template opening

### Refactor

- Remove dup import
- Add a default case

## [1.8.0]

### Features

- Added `DuviriCycle`

### Maintenance

- Bumped dart sdk to `3.1.5`

## [1.7.7]

### Bug Fixes

- Lowered `collection` constraints for `flutter_test`

## [1.7.6]

### Bug Fixes

- Lowered constraints for `meta` to work with `flutter_test`

## [1.7.5]

### Bug Fixes

- Http constraint pointing to nonexistent release

## [1.7.4]

### Bug Fixes

- Throw exception when an item isn't found by `searchByUniqueName`

## [1.7.3]

### Bug Fixes

- Allow lower version of `meta` in order to work with flutter_test

## [1.7.2]

### Bug Fixes

- `marketInfo` and `vaulted` are now nullable for relic models

### Maintenance

- Bump meta from 1.9.1 to 1.10.0 (#12)
- Bump mocktail from 0.3.0 to 1.0.0 (#9)
- Bump cycjimmy/semantic-release-action from 3 to 4 (#10)
- Bump actions/checkout from 3 to 4 (#11)

## [1.7.1]

### Bug Fixes

- Update generated files

## [1.7.0]

### Bug Fixes

- Http client not passing queries properly

### Features

- Deprecated `voidTrader` in favor of `voidTraders`
- Add `searchByUniqueName`

### Maintenance

- Update `collection` and `mocktail` packages

### Styling

- Run `dart fix`

## [1.6.5]

### Bug Fixes

- Update http constraints

## [1.6.4]

### Bug Fixes

- Fix resources category string

### Refactor

- Clean up switch statement

## [1.6.3]

### Bug Fixes

- Pacman was facing the wrong way

## [1.6.2]

### Bug Fixes

- Added broader constraints to play well with other packages

## [1.6.1]

### Bug Fixes

- Lowered collection contraint to work with flutter_test

### Miscellaneous Tasks

- Actions write test
- Setup release environment
- Add git user info
- Add a release token
- Ugh

## [1.6.0]

### Features

- Add uniqueName

### Maintenance

- Bump very_good_analysis from 4.0.0+1 to 5.0.0+1 (#5)
- Bump http from 0.13.6 to 1.0.0 (#6)
- Update dependecies

## [1.5.27]

### Bug Fixes

- Workaround where `Primary.attack` and `Primary.disposition` are null on the Prisma Lenz

### Maintenance

- Update dependecies and sdk constraints

### Refactor

- Cleaned up the switch statement for item serializetion

### Testing

- Removed a print test that was left when I tested mods

## [1.5.26]

### Bug Fixes

- Add missing supported languages Serbian, Czech, and Turkey
- Fixed where activiation and expiry can be null

## [1.5.25]

### Bug Fixes

- Possible instances where `Fissure.enemyKey` is missing or null in json

## [1.5.24]

### Bug Fixes

- Corrected json key names for `TargetLocation.lastVerified` and `TargetLocation.spawnRate`

## [1.5.23]

### Bug Fixes

- Fixed an issue where `SynthTarget` fails to parse when `lastVerified` is missing

## [1.5.22]

### Bug Fixes

- FlashSale can fail to parse when `isPopular` is missing

## [1.5.21]

### Bug Fixes

- `Fissure.missionKey` and `SynthTarget.imageKey` are now nullable

## [1.5.20]

### Bug Fixes

- Typo in `operationSymbol`

## [1.5.19]

### Bug Fixes

- `SentientOutpost.mission` is now nullable

## [1.5.18]

### Bug Fixes

- Added missing polarity and modSet keys

## [1.5.17]

### Bug Fixes

- Pathlogs were not being added to secondary weapons

## [1.5.16]

### Bug Fixes

- Weapons not exposing patchlogs

## [1.5.14]

### Maintenance

- Bump very_good_analysis from 3.1.0 to 4.0.0+1 (#3)
- Update dependencies

### Styling

- Always put required parameters at the above

## [1.5.13]

### Bug Fixes

- Added some missing keys

## [1.5.12]

### Bug Fixes

- `Item.tradable` default to false

## [1.5.11]

### Bug Fixes

- Pass patchlogs to all item types

### Maintenance

- Update model libs

## [1.5.10]

### Bug Fixes

- Made `Worldstate.sentientOutpot` nullable

## [1.5.9]

### Bug Fixes

- Enemies also have images
- Tigger release
- Trigger trigger
- Trigger release

## [1.5.7]

### Bug Fixes

- Add missing `super.imageName` to other iitems

### Miscellaneous Tasks

- Add an example

## [1.5.6]

### Bug Fixes

- Pass `super.imageName` in components

## [1.5.5]

### Bug Fixes

- Enforce `Map<String, String>` on `News.translations`
- New syndicate jobs can have a null type

## [1.5.4]

### Bug Fixes

- Add eta to model

## [1.5.3]

### Bug Fixes

- Add getters for daily and weekly challenges

## [1.5.2]

### Bug Fixes

- Add `imgUrl` to `Patchlog`

### Documentation

- Add documentation for `EquipableItem`

## [1.5.1]

### Bug Fixes

- Add missing `Gun` stats

## [1.5.0]

### Bug Fixes

- Change melee stats to proper types

### Features

- Add melee follow through speed

## [1.4.0]

### Features

- Add heavy and slam attack for melee

## [1.3.3]

### Bug Fixes

- `News.date` was changed to be a `DateTime`

## [1.3.1]

### Bug Fixes

- Add some missing `Weapon` parm

## [1.3.0]

### Features

- Add `eventReward` method

## [1.2.2]

### Bug Fixes

- Made `exclusiveWeapon` nullable

### Maintenance

- Bump cycjimmy/semantic-release-action from 2 to 3 (#2)

## [1.2.1]

### Bug Fixes

- Add missiong `exclusiveWeapon` key

## [1.2.0]

### Features

- Implement ability model

## [1.1.0]

### Features

- Add ` EquipableItem` class

### Maintenance

- Bump actions/checkout from 1 to 3 (#1)

## [1.0.4]

### Bug Fixes

- Export clients

### Styling

- Remove unnecessary import

## [1.0.3]

### Bug Fixes

- Export `item_utils.dart`

## [1.0.2]

### Bug Fixes

- Cleaned up exports/imports

## [1.0.1]

### Bug Fixes

- Lower `collection` package version

## [1.0.0]

### Bug Fixes

- Include `message` map in `InterimSteps`
- Correct fixture export
- Forgot `Alert`
- Remove objects export
- Missing component json methods
- Remove `CycleObject. shortString`
- Model tweaks for test
- Basic implementation of `warframe-items` endpoint
- GamePlatform not passing name properly
- `Mod.drops` set back to nullable

### Documentation

- Add documentation placeholders for `Message`
- Add some missing docs
- Specify which worldstate platforms share

### Features

- Deprecated game platforms xb1, ps4, and swi
- Added synth target models
- Add a seperate Mod class for mod set mods
- Full implementation of `warframe-items` endpoints
- Add synthesis target client

### Maintenance

- Update dev packages

### Miscellaneous Tasks

- Initial commit
- Initial commit
- Some headway with warframe-items
- Created models for melee
- Full implementation of warframe-items
- Gitignore coverage output
- Ignore local fixtures
- Add semantic-release
- Use `GITHUB_TOKEN`

### Refactor

- Removed `EphameralObject`
- Remove unnecessary imports
- Client cleanup

### Styling

- Dart format

### Testing

- Update fixtures
- Fixture updates
- Rename fixture helper
- Only test that the json is serilized wtihout throwing
- Update fixtures
- Only check for serilization and not data matching
- Add test for `Item.toJson()`
- Annd back to only vm
- Reorganize test for more test
- Uri not matching properly
- Update fixtures before running test
- Let fixtures update while running CI
- Don't need the `worldstate` subdirectory
- Bash script stuff
- Some more test

<!-- generated by git-cliff -->
