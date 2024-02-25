# Changelog

All notable changes to this project will be documented in this file.

## [unreleased]

### Miscellaneous Tasks

- Update README
- Corrected git_* secrets
- Add branch name for changelog generator
- Wow I'm an idiot
- Add `WFCD` to list of approved words

## [3.6.4] - 2024-02-24

### Bug Fixes

- Better json to Item parsing using an item's type instead of category

### Maintenance

- Bump orhun/git-cliff-action from 2 to 3 (#18)

### Miscellaneous Tasks

- Some work on changelog and release workflows

## [3.6.3] - 2024-02-15

### Bug Fixes

- Using ping interveal to keep websocket from disconnecting

## [3.6.2] - 2024-02-13

### Bug Fixes

- Drops weren't being passed down for `Relic`

## [3.6.1] - 2024-02-13

### Bug Fixes

- `Relic` was missing properties

### Maintenance

- Bump stefanzweifel/git-auto-commit-action from 4 to 5 (#16)

### Miscellaneous Tasks

- Prepare to publish to pub.dev (#15)
- Add codeowners

### Refactor

- Remove `GamePlatform` (#17)

## [3.6.0] - 2024-02-02

### Features

- Mods now extend DroppableItem type

## [3.5.0] - 2024-02-01

### Features

- Add Necramech Mod type
- Rename `ItemCategory` to `ItemType`

## [3.4.0] - 2024-01-31

### Documentation

- Add docs for `MinimalItem.vaultDate` and `MinimailItem.vaulted`

### Features

- Use `ItemCategory` for `Item.type`
- Use type to create Items but fallback to category

## [3.3.0] - 2024-01-30

### Features

- Add `vaulted` and `vaultedDate` to MinimalItem

## [3.2.0] - 2024-01-30

### Bug Fixes

- Use secure websocket

### Features

- Use enhanced enums for Item categories
- Introduce a buildable version of the sentinel item type

### Miscellaneous Tasks

- Added some spelling words exceptions

### Styling

- Run `dart fix` and `dart format`

## [3.1.0] - 2024-01-28

### Features

- Add worldstate websocket

### Maintenance

- Bump min SDK to 3.2.0

### Miscellaneous Tasks

- Updated release workflow a bit
- Added some extra steps for validations
- Use semantic-release-pub to update pubspec
- Forgot to add `semantic-release-pub` plugin

## [3.0.1] - 2024-01-23

### Bug Fixes

- Fix typo in parameter return

## [3.0.0] - 2024-01-22

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

## [2.1.1] - 2024-01-20

### Bug Fixes

- Enforce non-null super parameters

## [2.1.0] - 2024-01-12

### Bug Fixes

- Made `Alert.tag` nullable

### Features

- Move json parsing to a seperate isolate

## [2.0.1] - 2023-12-29

### Bug Fixes

- Enforce `Item.imageName` across descendants

### Miscellaneous Tasks

- Updated dev dependencies

## [2.0.0] - 2023-12-10

### Bug Fixes

- [**breaking**] Remove `CycleObject`
- Enforce `Item.imageName` even if null

### Documentation

- Typo in template opening

### Refactor

- Remove dup import
- Add a default case

## [1.8.0] - 2023-11-11

### Features

- Added `DuviriCycle`

### Maintenance

- Bumped dart sdk to `3.1.5`

## [1.7.7] - 2023-10-25

### Bug Fixes

- Lowered `collection` constraints for `flutter_test`

## [1.7.6] - 2023-10-25

### Bug Fixes

- Lowered constraints for `meta` to work with `flutter_test`

## [1.7.5] - 2023-10-25

### Bug Fixes

- Http constraint pointing to nonexistent release

## [1.7.4] - 2023-09-13

### Bug Fixes

- Throw exception when an item isn't found by `searchByUniqueName`

## [1.7.3] - 2023-09-13

### Bug Fixes

- Allow lower version of `meta` in order to work with flutter_test

## [1.7.2] - 2023-09-13

### Bug Fixes

- `marketInfo` and `vaulted` are now nullable for relic models

### Maintenance

- Bump meta from 1.9.1 to 1.10.0 (#12)
- Bump mocktail from 0.3.0 to 1.0.0 (#9)
- Bump cycjimmy/semantic-release-action from 3 to 4 (#10)
- Bump actions/checkout from 3 to 4 (#11)

## [1.7.1] - 2023-09-05

### Bug Fixes

- Update generated files

## [1.7.0] - 2023-09-05

### Bug Fixes

- Http client not passing queries properly

### Features

- Deprecated `voidTrader` in favor of `voidTraders`
- Add `searchByUniqueName`

### Maintenance

- Update `collection` and `mocktail` packages

### Styling

- Run `dart fix`

## [1.6.5] - 2023-07-04

### Bug Fixes

- Update http constraints

## [1.6.4] - 2023-06-23

### Bug Fixes

- Fix resources category string

### Refactor

- Clean up switch statement

## [1.6.3] - 2023-06-07

### Bug Fixes

- Pacman was facing the wrong way

## [1.6.2] - 2023-06-07

### Bug Fixes

- Added broader constraints to play well with other packages

## [1.6.1] - 2023-06-07

### Bug Fixes

- Lowered collection contraint to work with flutter_test

### Miscellaneous Tasks

- Actions write test
- Setup release environment
- Add git user info
- Add a release token
- Ugh

## [1.6.0] - 2023-06-06

### Features

- Add uniqueName

### Maintenance

- Bump very_good_analysis from 4.0.0+1 to 5.0.0+1 (#5)
- Bump http from 0.13.6 to 1.0.0 (#6)
- Update dependecies

## [1.5.27] - 2023-05-12

### Bug Fixes

- Workaround where `Primary.attack` and `Primary.disposition` are null on the Prisma Lenz

### Maintenance

- Update dependecies and sdk constraints

### Refactor

- Cleaned up the switch statement for item serializetion

### Testing

- Removed a print test that was left when I tested mods

## [1.5.26] - 2023-04-28

### Bug Fixes

- Add missing supported languages Serbian, Czech, and Turkey
- Fixed where activiation and expiry can be null

## [1.5.25] - 2023-04-27

### Bug Fixes

- Possible instances where `Fissure.enemyKey` is missing or null in json

## [1.5.24] - 2023-04-27

### Bug Fixes

- Corrected json key names for `TargetLocation.lastVerified` and `TargetLocation.spawnRate`

## [1.5.23] - 2023-04-27

### Bug Fixes

- Fixed an issue where `SynthTarget` fails to parse when `lastVerified` is missing

## [1.5.22] - 2023-04-27

### Bug Fixes

- FlashSale can fail to parse when `isPopular` is missing

## [1.5.21] - 2023-04-25

### Bug Fixes

- `Fissure.missionKey` and `SynthTarget.imageKey` are now nullable

## [1.5.20] - 2023-04-23

### Bug Fixes

- Typo in `operationSymbol`

## [1.5.19] - 2023-04-13

### Bug Fixes

- `SentientOutpost.mission` is now nullable

## [1.5.18] - 2023-04-02

### Bug Fixes

- Added missing polarity and modSet keys

## [1.5.17] - 2023-04-02

### Bug Fixes

- Pathlogs were not being added to secondary weapons

## [1.5.16] - 2023-04-02

### Bug Fixes

- Weapons not exposing patchlogs

## [1.5.14] - 2023-04-01

### Maintenance

- Bump very_good_analysis from 3.1.0 to 4.0.0+1 (#3)
- Update dependencies

### Styling

- Always put required parameters at the above

## [1.5.13] - 2023-02-04

### Bug Fixes

- Added some missing keys

## [1.5.12] - 2023-01-31

### Bug Fixes

- `Item.tradable` default to false

## [1.5.11] - 2023-01-29

### Bug Fixes

- Pass patchlogs to all item types

### Maintenance

- Update model libs

## [1.5.10] - 2023-01-22

### Bug Fixes

- Made `Worldstate.sentientOutpot` nullable

## [1.5.9] - 2023-01-22

### Bug Fixes

- Enemies also have images
- Tigger release
- Trigger trigger
- Trigger release

## [1.5.7] - 2023-01-21

### Bug Fixes

- Add missing `super.imageName` to other iitems

### Miscellaneous Tasks

- Add an example

## [1.5.6] - 2023-01-21

### Bug Fixes

- Pass `super.imageName` in components

## [1.5.5] - 2023-01-20

### Bug Fixes

- Enforce `Map<String, String>` on `News.translations`
- New syndicate jobs can have a null type

## [1.5.4] - 2023-01-20

### Bug Fixes

- Add eta to model

## [1.5.3] - 2023-01-20

### Bug Fixes

- Add getters for daily and weekly challenges

## [1.5.2] - 2023-01-17

### Bug Fixes

- Add `imgUrl` to `Patchlog`

### Documentation

- Add documentation for `EquipableItem`

## [1.5.1] - 2023-01-15

### Bug Fixes

- Add missing `Gun` stats

## [1.5.0] - 2023-01-15

### Bug Fixes

- Change melee stats to proper types

### Features

- Add melee follow through speed

## [1.4.0] - 2023-01-14

### Features

- Add heavy and slam attack for melee

## [1.3.3] - 2023-01-14

### Bug Fixes

- `News.date` was changed to be a `DateTime`

## [1.3.1] - 2023-01-08

### Bug Fixes

- Add some missing `Weapon` parm

## [1.3.0] - 2023-01-03

### Features

- Add `eventReward` method

## [1.2.2] - 2023-01-01

### Bug Fixes

- Made `exclusiveWeapon` nullable

### Maintenance

- Bump cycjimmy/semantic-release-action from 2 to 3 (#2)

## [1.2.1] - 2023-01-01

### Bug Fixes

- Add missiong `exclusiveWeapon` key

## [1.2.0] - 2022-12-31

### Features

- Implement ability model

## [1.1.0] - 2022-12-27

### Features

- Add ` EquipableItem` class

### Maintenance

- Bump actions/checkout from 1 to 3 (#1)

## [1.0.4] - 2022-12-18

### Bug Fixes

- Export clients

### Styling

- Remove unnecessary import

## [1.0.3] - 2022-12-18

### Bug Fixes

- Export `item_utils.dart`

## [1.0.2] - 2022-12-18

### Bug Fixes

- Cleaned up exports/imports

## [1.0.1] - 2022-12-18

### Bug Fixes

- Lower `collection` package version

## [1.0.0] - 2022-12-18

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
