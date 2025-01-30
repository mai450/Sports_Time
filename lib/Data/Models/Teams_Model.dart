// class TeamsData {
//   TeamsData({
//     required this.success,
//     required this.result,
//   });
//   late final int success;
//   late final List<Result> result;

//   TeamsData.fromJson(Map<String?, dynamic> json) {
//     success = json['success'];
//     result = List.from(json['result']).map((e) => Result.fromJson(e)).toList();
//   }

//   Map<String?, dynamic> toJson() {
//     final _data = <String?, dynamic>{};
//     _data['success'] = success;
//     _data['result'] = result.map((e) => e.toJson()).toList();
//     return _data;
//   }
// }

// class Result {
//   Result({
//     required this.teamKey,
//     required this.teamName,
//     required this.teamLogo,
//     required this.players,
//     required this.coaches,
//   });
//   late final int? teamKey;
//   late final String? teamName;
//   late final String? teamLogo;
//   late final List<Players> players;
//   late final List<Coaches> coaches;

//   Result.fromJson(Map<String, dynamic> json) {
//     teamKey = json['team_key'];
//     teamName = json['team_name'];
//     teamLogo = json['team_logo'];
//     players =
//         List.from(json['players']).map((e) => Players.fromJson(e)).toList();
//     coaches =
//         List.from(json['coaches']).map((e) => Coaches.fromJson(e)).toList();
//   }

//   Map<String?, dynamic> toJson() {
//     final _data = <String?, dynamic>{};
//     _data['team_key'] = teamKey;
//     _data['team_name'] = teamName;
//     _data['team_logo'] = teamLogo;
//     _data['players'] = players.map((e) => e.toJson()).toList();
//     _data['coaches'] = coaches.map((e) => e.toJson()).toList();
//     return _data;
//   }
// }

// class Players {
//   Players({
//     required this.playerKey,
//     required this.playerImage,
//     required this.playerName,
//     required this.playerNumber,
//     this.playerCountry,
//     required this.playerType,
//     required this.playerAge,
//     required this.playerMatchPlayed,
//     required this.playerGoals,
//     required this.playerYellowCards,
//     required this.playerRedCards,
//     required this.playerInjured,
//     required this.playerSubstituteOut,
//     required this.playerSubstitutesOnBench,
//     required this.playerAssists,
//     required this.playerBirthdate,
//     required this.playerIsCaptain,
//     required this.playerShotsTotal,
//     required this.playerGoalsConceded,
//     required this.playerFoulsCommitted,
//     required this.playerTackles,
//     required this.playerBlocks,
//     required this.playerCrossesTotal,
//     required this.playerInterceptions,
//     required this.playerClearances,
//     required this.playerDispossesed,
//     required this.playerSaves,
//     required this.playerInsideBoxSaves,
//     required this.playerDuelsTotal,
//     required this.playerDuelsWon,
//     required this.playerDribbleAttempts,
//     required this.playerDribbleSucc,
//     required this.playerPenComm,
//     required this.playerPenWon,
//     required this.playerPenScored,
//     required this.playerPenMissed,
//     required this.playerPasses,
//     required this.playerPassesAccuracy,
//     required this.playerKeyPasses,
//     required this.playerWoordworks,
//     required this.playerRating,
//   });
//   late final int playerKey;
//   late final String? playerImage;
//   late final String? playerName;
//   late final String? playerNumber;
//   late final playerCountry;
//   late final String? playerType;
//   late final String? playerAge;
//   late final String? playerMatchPlayed;
//   late final String? playerGoals;
//   late final String? playerYellowCards;
//   late final String? playerRedCards;
//   late final String? playerInjured;
//   late final String? playerSubstituteOut;
//   late final String? playerSubstitutesOnBench;
//   late final String? playerAssists;
//   late final String? playerBirthdate;
//   late final String? playerIsCaptain;
//   late final String? playerShotsTotal;
//   late final String? playerGoalsConceded;
//   late final String? playerFoulsCommitted;
//   late final String? playerTackles;
//   late final String? playerBlocks;
//   late final String? playerCrossesTotal;
//   late final String? playerInterceptions;
//   late final String? playerClearances;
//   late final String? playerDispossesed;
//   late final String? playerSaves;
//   late final String? playerInsideBoxSaves;
//   late final String? playerDuelsTotal;
//   late final String? playerDuelsWon;
//   late final String? playerDribbleAttempts;
//   late final String? playerDribbleSucc;
//   late final String? playerPenComm;
//   late final String? playerPenWon;
//   late final String? playerPenScored;
//   late final String? playerPenMissed;
//   late final String? playerPasses;
//   late final String? playerPassesAccuracy;
//   late final String? playerKeyPasses;
//   late final String? playerWoordworks;
//   late final String? playerRating;

//   Players.fromJson(Map<String?, dynamic> json) {
//     playerKey = json['player_key'];
//     playerImage = json['player_image'];
//     playerName = json['player_name'];
//     playerNumber = json['player_number'];
//     playerCountry = null;
//     playerType = json['player_type'];
//     playerAge = json['player_age'];
//     playerMatchPlayed = json['player_match_played'];
//     playerGoals = json['player_goals'];
//     playerYellowCards = json['player_yellow_cards'];
//     playerRedCards = json['player_red_cards'];
//     playerInjured = json['player_injured'];
//     playerSubstituteOut = json['player_substitute_out'];
//     playerSubstitutesOnBench = json['player_substitutes_on_bench'];
//     playerAssists = json['player_assists'];
//     playerBirthdate = json['player_birthdate'];
//     playerIsCaptain = json['player_is_captain'];
//     playerShotsTotal = json['player_shots_total'];
//     playerGoalsConceded = json['player_goals_conceded'];
//     playerFoulsCommitted = json['player_fouls_committed'];
//     playerTackles = json['player_tackles'];
//     playerBlocks = json['player_blocks'];
//     playerCrossesTotal = json['player_crosses_total'];
//     playerInterceptions = json['player_interceptions'];
//     playerClearances = json['player_clearances'];
//     playerDispossesed = json['player_dispossesed'];
//     playerSaves = json['player_saves'];
//     playerInsideBoxSaves = json['player_inside_box_saves'];
//     playerDuelsTotal = json['player_duels_total'];
//     playerDuelsWon = json['player_duels_won'];
//     playerDribbleAttempts = json['player_dribble_attempts'];
//     playerDribbleSucc = json['player_dribble_succ'];
//     playerPenComm = json['player_pen_comm'];
//     playerPenWon = json['player_pen_won'];
//     playerPenScored = json['player_pen_scored'];
//     playerPenMissed = json['player_pen_missed'];
//     playerPasses = json['player_passes'];
//     playerPassesAccuracy = json['player_passes_accuracy'];
//     playerKeyPasses = json['player_key_passes'];
//     playerWoordworks = json['player_woordworks'];
//     playerRating = json['player_rating'];
//   }

//   Map<String?, dynamic> toJson() {
//     final _data = <String?, dynamic>{};
//     _data['player_key'] = playerKey;
//     _data['player_image'] = playerImage;
//     _data['player_name'] = playerName;
//     _data['player_number'] = playerNumber;
//     _data['player_country'] = playerCountry;
//     _data['player_type'] = playerType;
//     _data['player_age'] = playerAge;
//     _data['player_match_played'] = playerMatchPlayed;
//     _data['player_goals'] = playerGoals;
//     _data['player_yellow_cards'] = playerYellowCards;
//     _data['player_red_cards'] = playerRedCards;
//     _data['player_injured'] = playerInjured;
//     _data['player_substitute_out'] = playerSubstituteOut;
//     _data['player_substitutes_on_bench'] = playerSubstitutesOnBench;
//     _data['player_assists'] = playerAssists;
//     _data['player_birthdate'] = playerBirthdate;
//     _data['player_is_captain'] = playerIsCaptain;
//     _data['player_shots_total'] = playerShotsTotal;
//     _data['player_goals_conceded'] = playerGoalsConceded;
//     _data['player_fouls_committed'] = playerFoulsCommitted;
//     _data['player_tackles'] = playerTackles;
//     _data['player_blocks'] = playerBlocks;
//     _data['player_crosses_total'] = playerCrossesTotal;
//     _data['player_interceptions'] = playerInterceptions;
//     _data['player_clearances'] = playerClearances;
//     _data['player_dispossesed'] = playerDispossesed;
//     _data['player_saves'] = playerSaves;
//     _data['player_inside_box_saves'] = playerInsideBoxSaves;
//     _data['player_duels_total'] = playerDuelsTotal;
//     _data['player_duels_won'] = playerDuelsWon;
//     _data['player_dribble_attempts'] = playerDribbleAttempts;
//     _data['player_dribble_succ'] = playerDribbleSucc;
//     _data['player_pen_comm'] = playerPenComm;
//     _data['player_pen_won'] = playerPenWon;
//     _data['player_pen_scored'] = playerPenScored;
//     _data['player_pen_missed'] = playerPenMissed;
//     _data['player_passes'] = playerPasses;
//     _data['player_passes_accuracy'] = playerPassesAccuracy;
//     _data['player_key_passes'] = playerKeyPasses;
//     _data['player_woordworks'] = playerWoordworks;
//     _data['player_rating'] = playerRating;
//     return _data;
//   }
// }

// class Coaches {
//   Coaches({
//     required this.coachName,
//     this.coachCountry,
//     this.coachAge,
//   });
//   late final String? coachName;
//   late final coachCountry;
//   late final coachAge;

//   Coaches.fromJson(Map<String?, dynamic> json) {
//     coachName = json['coach_name'];
//     coachCountry = null;
//     coachAge = null;
//   }

//   Map<String?, dynamic> toJson() {
//     final _data = <String?, dynamic>{};
//     _data['coach_name'] = coachName;
//     _data['coach_country'] = coachCountry;
//     _data['coach_age'] = coachAge;
//     return _data;
//   }
// }

class TeamsData {
  String? teamKey;
  String? teamName;
  String? teamCountry;
  String? teamFounded;
  String? teamBadge;
  Venue? venue;
  List<Players>? players;
  List<Coaches>? coaches;

  TeamsData(
      {this.teamKey,
      this.teamName,
      this.teamCountry,
      this.teamFounded,
      this.teamBadge,
      this.venue,
      this.players,
      this.coaches});

  TeamsData.fromJson(Map<String, dynamic> json) {
    teamKey = json['team_key'];
    teamName = json['team_name'];
    teamCountry = json['team_country'];
    teamFounded = json['team_founded'];
    teamBadge = json['team_badge'];
    venue = json['venue'] != null ? new Venue.fromJson(json['venue']) : null;
    if (json['players'] != null) {
      players = <Players>[];
      json['players'].forEach((v) {
        players!.add(new Players.fromJson(v));
      });
    }
    if (json['coaches'] != null) {
      coaches = <Coaches>[];
      json['coaches'].forEach((v) {
        coaches!.add(new Coaches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['team_key'] = this.teamKey;
    data['team_name'] = this.teamName;
    data['team_country'] = this.teamCountry;
    data['team_founded'] = this.teamFounded;
    data['team_badge'] = this.teamBadge;
    if (this.venue != null) {
      data['venue'] = this.venue!.toJson();
    }
    if (this.players != null) {
      data['players'] = this.players!.map((v) => v.toJson()).toList();
    }
    if (this.coaches != null) {
      data['coaches'] = this.coaches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Venue {
  String? venueName;
  String? venueAddress;
  String? venueCity;
  String? venueCapacity;
  String? venueSurface;

  Venue(
      {this.venueName,
      this.venueAddress,
      this.venueCity,
      this.venueCapacity,
      this.venueSurface});

  Venue.fromJson(Map<String, dynamic> json) {
    venueName = json['venue_name'];
    venueAddress = json['venue_address'];
    venueCity = json['venue_city'];
    venueCapacity = json['venue_capacity'];
    venueSurface = json['venue_surface'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['venue_name'] = this.venueName;
    data['venue_address'] = this.venueAddress;
    data['venue_city'] = this.venueCity;
    data['venue_capacity'] = this.venueCapacity;
    data['venue_surface'] = this.venueSurface;
    return data;
  }
}

class Players {
  int? playerKey;
  String? playerId;
  String? playerImage;
  String? playerName;
  String? playerCompleteName;
  String? playerNumber;
  String? playerCountry;
  String? playerType;
  String? playerAge;
  String? playerMatchPlayed;
  String? playerGoals;
  String? playerYellowCards;
  String? playerRedCards;
  String? playerInjured;
  String? playerSubstituteOut;
  String? playerSubstitutesOnBench;
  String? playerAssists;
  String? playerBirthdate;
  String? playerIsCaptain;
  String? playerShotsTotal;
  String? playerGoalsConceded;
  String? playerFoulsCommitted;
  String? playerTackles;
  String? playerBlocks;
  String? playerCrossesTotal;
  String? playerInterceptions;
  String? playerClearances;
  String? playerDispossesed;
  String? playerSaves;
  String? playerInsideBoxSaves;
  String? playerDuelsTotal;
  String? playerDuelsWon;
  String? playerDribbleAttempts;
  String? playerDribbleSucc;
  String? playerPenComm;
  String? playerPenWon;
  String? playerPenScored;
  String? playerPenMissed;
  String? playerPasses;
  String? playerPassesAccuracy;
  String? playerKeyPasses;
  String? playerWoordworks;
  String? playerRating;

  Players(
      {this.playerKey,
      this.playerId,
      this.playerImage,
      this.playerName,
      this.playerCompleteName,
      this.playerNumber,
      this.playerCountry,
      this.playerType,
      this.playerAge,
      this.playerMatchPlayed,
      this.playerGoals,
      this.playerYellowCards,
      this.playerRedCards,
      this.playerInjured,
      this.playerSubstituteOut,
      this.playerSubstitutesOnBench,
      this.playerAssists,
      this.playerBirthdate,
      this.playerIsCaptain,
      this.playerShotsTotal,
      this.playerGoalsConceded,
      this.playerFoulsCommitted,
      this.playerTackles,
      this.playerBlocks,
      this.playerCrossesTotal,
      this.playerInterceptions,
      this.playerClearances,
      this.playerDispossesed,
      this.playerSaves,
      this.playerInsideBoxSaves,
      this.playerDuelsTotal,
      this.playerDuelsWon,
      this.playerDribbleAttempts,
      this.playerDribbleSucc,
      this.playerPenComm,
      this.playerPenWon,
      this.playerPenScored,
      this.playerPenMissed,
      this.playerPasses,
      this.playerPassesAccuracy,
      this.playerKeyPasses,
      this.playerWoordworks,
      this.playerRating});

  Players.fromJson(Map<String, dynamic> json) {
    playerKey = json['player_key'];
    playerId = json['player_id'];
    playerImage = json['player_image'];
    playerName = json['player_name'];
    playerCompleteName = json['player_complete_name'];
    playerNumber = json['player_number'];
    playerCountry = json['player_country'];
    playerType = json['player_type'];
    playerAge = json['player_age'];
    playerMatchPlayed = json['player_match_played'];
    playerGoals = json['player_goals'];
    playerYellowCards = json['player_yellow_cards'];
    playerRedCards = json['player_red_cards'];
    playerInjured = json['player_injured'];
    playerSubstituteOut = json['player_substitute_out'];
    playerSubstitutesOnBench = json['player_substitutes_on_bench'];
    playerAssists = json['player_assists'];
    playerBirthdate = json['player_birthdate'];
    playerIsCaptain = json['player_is_captain'];
    playerShotsTotal = json['player_shots_total'];
    playerGoalsConceded = json['player_goals_conceded'];
    playerFoulsCommitted = json['player_fouls_committed'];
    playerTackles = json['player_tackles'];
    playerBlocks = json['player_blocks'];
    playerCrossesTotal = json['player_crosses_total'];
    playerInterceptions = json['player_interceptions'];
    playerClearances = json['player_clearances'];
    playerDispossesed = json['player_dispossesed'];
    playerSaves = json['player_saves'];
    playerInsideBoxSaves = json['player_inside_box_saves'];
    playerDuelsTotal = json['player_duels_total'];
    playerDuelsWon = json['player_duels_won'];
    playerDribbleAttempts = json['player_dribble_attempts'];
    playerDribbleSucc = json['player_dribble_succ'];
    playerPenComm = json['player_pen_comm'];
    playerPenWon = json['player_pen_won'];
    playerPenScored = json['player_pen_scored'];
    playerPenMissed = json['player_pen_missed'];
    playerPasses = json['player_passes'];
    playerPassesAccuracy = json['player_passes_accuracy'];
    playerKeyPasses = json['player_key_passes'];
    playerWoordworks = json['player_woordworks'];
    playerRating = json['player_rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['player_key'] = this.playerKey;
    data['player_id'] = this.playerId;
    data['player_image'] = this.playerImage;
    data['player_name'] = this.playerName;
    data['player_complete_name'] = this.playerCompleteName;
    data['player_number'] = this.playerNumber;
    data['player_country'] = this.playerCountry;
    data['player_type'] = this.playerType;
    data['player_age'] = this.playerAge;
    data['player_match_played'] = this.playerMatchPlayed;
    data['player_goals'] = this.playerGoals;
    data['player_yellow_cards'] = this.playerYellowCards;
    data['player_red_cards'] = this.playerRedCards;
    data['player_injured'] = this.playerInjured;
    data['player_substitute_out'] = this.playerSubstituteOut;
    data['player_substitutes_on_bench'] = this.playerSubstitutesOnBench;
    data['player_assists'] = this.playerAssists;
    data['player_birthdate'] = this.playerBirthdate;
    data['player_is_captain'] = this.playerIsCaptain;
    data['player_shots_total'] = this.playerShotsTotal;
    data['player_goals_conceded'] = this.playerGoalsConceded;
    data['player_fouls_committed'] = this.playerFoulsCommitted;
    data['player_tackles'] = this.playerTackles;
    data['player_blocks'] = this.playerBlocks;
    data['player_crosses_total'] = this.playerCrossesTotal;
    data['player_interceptions'] = this.playerInterceptions;
    data['player_clearances'] = this.playerClearances;
    data['player_dispossesed'] = this.playerDispossesed;
    data['player_saves'] = this.playerSaves;
    data['player_inside_box_saves'] = this.playerInsideBoxSaves;
    data['player_duels_total'] = this.playerDuelsTotal;
    data['player_duels_won'] = this.playerDuelsWon;
    data['player_dribble_attempts'] = this.playerDribbleAttempts;
    data['player_dribble_succ'] = this.playerDribbleSucc;
    data['player_pen_comm'] = this.playerPenComm;
    data['player_pen_won'] = this.playerPenWon;
    data['player_pen_scored'] = this.playerPenScored;
    data['player_pen_missed'] = this.playerPenMissed;
    data['player_passes'] = this.playerPasses;
    data['player_passes_accuracy'] = this.playerPassesAccuracy;
    data['player_key_passes'] = this.playerKeyPasses;
    data['player_woordworks'] = this.playerWoordworks;
    data['player_rating'] = this.playerRating;
    return data;
  }
}

class Coaches {
  String? coachName;
  String? coachCountry;
  String? coachAge;

  Coaches({this.coachName, this.coachCountry, this.coachAge});

  Coaches.fromJson(Map<String, dynamic> json) {
    coachName = json['coach_name'];
    coachCountry = json['coach_country'];
    coachAge = json['coach_age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coach_name'] = this.coachName;
    data['coach_country'] = this.coachCountry;
    data['coach_age'] = this.coachAge;
    return data;
  }
}
