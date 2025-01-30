// class TopScorersData {
//   TopScorersData({
//     required this.success,
//     required this.result,
//   });
//   late final int success;
//   late final List<Result> result;

//   TopScorersData.fromJson(Map<String, dynamic> json) {
//     success = json['success'];
//     result = List.from(json['result']).map((e) => Result.fromJson(e)).toList();
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['success'] = success;
//     _data['result'] = result.map((e) => e.toJson()).toList();
//     return _data;
//   }
// }

// class Result {
//   Result({
//     required this.playerPlace,
//     required this.playerName,
//     required this.playerKey,
//     required this.teamName,
//     required this.teamKey,
//     required this.goals,
//     this.assists,
//     required this.penaltyGoals,
//   });
//   late final int playerPlace;
//   late final String? playerName;
//   late final int playerKey;
//   late final String? teamName;
//   late final int teamKey;
//   late final int goals;
//   late final int? assists;
//   late final int penaltyGoals;

//   Result.fromJson(Map<String, dynamic> json) {
//     playerPlace = json['player_place'];
//     playerName = json['player_name'];
//     playerKey = json['player_key'];
//     teamName = json['team_name'];
//     teamKey = json['team_key'];
//     goals = json['goals'];
//     assists = json['assists'];
//     penaltyGoals = json['penalty_goals'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['player_place'] = playerPlace;
//     _data['player_name'] = playerName;
//     _data['player_key'] = playerKey;
//     _data['team_name'] = teamName;
//     _data['team_key'] = teamKey;
//     _data['goals'] = goals;
//     _data['assists'] = assists;
//     _data['penalty_goals'] = penaltyGoals;
//     return _data;
//   }
// }

class TopScorersData {
  String? playerPlace;
  String? playerName;
  int? playerKey;
  String? teamName;
  String? teamKey;
  String? goals;
  String? assists;
  String? penaltyGoals;
  String? fkStageKey;
  String? stageName;

  TopScorersData(
      {this.playerPlace,
      this.playerName,
      this.playerKey,
      this.teamName,
      this.teamKey,
      this.goals,
      this.assists,
      this.penaltyGoals,
      this.fkStageKey,
      this.stageName});

  TopScorersData.fromJson(Map<String, dynamic> json) {
    playerPlace = json['player_place'];
    playerName = json['player_name'];
    playerKey = json['player_key'];
    teamName = json['team_name'];
    teamKey = json['team_key'];
    goals = json['goals'];
    assists = json['assists'];
    penaltyGoals = json['penalty_goals'];
    fkStageKey = json['fk_stage_key'];
    stageName = json['stage_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['player_place'] = this.playerPlace;
    data['player_name'] = this.playerName;
    data['player_key'] = this.playerKey;
    data['team_name'] = this.teamName;
    data['team_key'] = this.teamKey;
    data['goals'] = this.goals;
    data['assists'] = this.assists;
    data['penalty_goals'] = this.penaltyGoals;
    data['fk_stage_key'] = this.fkStageKey;
    data['stage_name'] = this.stageName;
    return data;
  }
}
