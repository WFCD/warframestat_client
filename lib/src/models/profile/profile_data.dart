import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/profile/arsenal.dart';
import 'package:warframestat_client/src/models/profile/intrinsics.dart';
import 'package:warframestat_client/src/models/profile/mission.dart';
import 'package:warframestat_client/src/models/profile/operator_loadout.dart';

part 'profile_data.g.dart';

/// Player daily standing per syndicate
typedef DailyStanding = ({
  int daily,
  int conclave,
  int simaris,
  int ostron,
  int quills,
  int solaris,
  int ventKids,
  int voxSolaris,
  int entrati,
  int necraloid,
  int holdfasts,
  int kahl,
  int cavia
});

/// Player alignment
typedef Alignment = ({int wisdom, double alignment});

/// Challenge progress
typedef ChallengeProgress = ({String name, int progress});

/// Player syndicate standing and title
typedef Syndicate = ({String name, int standing, int title});

/// {@template profile_data}
/// Player profile data
/// {@endtemplate}
@JsonSerializable()
class ProfileData extends Equatable {
  /// {@macro profile_data}
  const ProfileData({
    required this.accountId,
    required this.username,
    required this.masteryRank,
    required this.loadout,
    required this.intrinsics,
    required this.challengeProgress,
    required this.guildId,
    required this.guildName,
    required this.guildTier,
    required this.guildXp,
    required this.guildClass,
    required this.guildEmblem,
    required this.allianceId,
    required this.deathMarks,
    required this.harvestable,
    required this.deathSquadable,
    required this.created,
    required this.migratedToConsole,
    required this.missions,
    required this.syndicates,
    required this.dailyStanding,
    required this.dailyFocus,
    required this.wishList,
    required this.unlockedOperator,
    required this.unlockedAlignment,
    required this.operatorLoadouts,
    required this.alignment,
  });

  /// Get [ProfileData] from json
  factory ProfileData.fromJson(Map<String, dynamic> json) {
    return _$ProfileDataFromJson(json);
  }

  /// Player account ID
  final String accountId;

  /// Player in-game name
  @JsonKey(name: 'displayName')
  final String username;

  /// Player mastery rank
  final int masteryRank;

  /// Player loudout
  final Arsenal loadout;

  /// Player's intrinsic ranks
  final Intrinsics intrinsics;

  /// Player progress towards challenge
  final List<ChallengeProgress> challengeProgress;

  /// Guild ID
  final String guildId;

  /// Guild name
  final String guildName;

  /// Guild tier
  final int guildTier;

  /// Guild XP
  final int guildXp;

  /// Guild class
  final int guildClass;

  /// Guild emblem
  final bool guildEmblem;

  /// Guild alliance ID
  final String allianceId;

  /// Assassins after this player
  final List<String> deathMarks;

  /// Whether or not the player is qualified as a target a Zanuka target
  final bool harvestable;

  /// Whether or not the player is qualified as a target for a death squad
  final bool deathSquadable;

  /// Date the account was created
  final DateTime created;

  /// Whether the user has migrated to console or not
  final bool migratedToConsole;

  /// Player mission completions
  final List<ProfileMission> missions;

  /// Player syndicate ranks
  final List<Syndicate> syndicates;

  /// Daily standing per Syndicate
  ///
  /// Faction syndicates all share daily standing
  final DailyStanding dailyStanding;

  /// Daily focus
  final int dailyFocus;

  /// Player wishlist for in-game market wishlist
  final dynamic wishList;

  /// Whhether the player has unlocked thier operator or not
  final bool unlockedOperator;

  /// Whether the player has unlocked their alignement or not
  final bool unlockedAlignment;

  /// Operator loadout
  final List<OperatorLoadout> operatorLoadouts;

  /// Player's alignment
  final Alignment alignment;

  /// Creates a json map from [ProfileData]
  Map<String, dynamic> toJson() => _$ProfileDataToJson(this);

  @override
  List<Object?> get props {
    return [
      accountId,
      username,
      masteryRank,
      loadout,
      intrinsics,
      challengeProgress,
      guildId,
      guildName,
      guildTier,
      guildXp,
      guildClass,
      guildEmblem,
      allianceId,
      deathMarks,
      harvestable,
      deathSquadable,
      created,
      migratedToConsole,
      missions,
      syndicates,
      dailyStanding,
      dailyFocus,
      wishList,
      unlockedOperator,
      unlockedAlignment,
      operatorLoadouts,
      alignment,
    ];
  }
}
