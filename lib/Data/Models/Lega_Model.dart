// class GetLegaModel {
//   int? success;
//   List<Result>? result;

//   GetLegaModel({this.success, this.result});

//   GetLegaModel.fromJson(Map<String, dynamic> json) {
//     success = json['success'];
//     if (json['result'] != null) {
//       result = <Result>[];
//       json['result'].forEach((v) {
//         result!.add(new Result.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['success'] = this.success;
//     if (this.result != null) {
//       data['result'] = this.result!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Result {
//   int? leagueKey;
//   String? leagueName;
//   int? countryKey;
//   String? countryName;
//   String? leagueLogo;
//   String? countryLogo;

//   Result(
//       {this.leagueKey,
//       this.leagueName,
//       this.countryKey,
//       this.countryName,
//       this.leagueLogo,
//       this.countryLogo});

//   Result.fromJson(Map<String, dynamic> json) {
//     leagueKey = json['league_key'];
//     leagueName = json['league_name'];
//     countryKey = json['country_key'];
//     countryName = json['country_name'];
//     leagueLogo = json['league_logo'];
//     countryLogo = json['country_logo'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['league_key'] = this.leagueKey;
//     data['league_name'] = this.leagueName;
//     data['country_key'] = this.countryKey;
//     data['country_name'] = this.countryName;
//     data['league_logo'] = this.leagueLogo;
//     data['country_logo'] = this.countryLogo;
//     return data;
//   }
// }

class GetLegaModel {
  String? countryId;
  String? countryName;
  String? leagueId;
  String? leagueName;
  String? leagueSeason;
  String? leagueLogo;
  String? countryLogo;

  GetLegaModel(
      {this.countryId,
      this.countryName,
      this.leagueId,
      this.leagueName,
      this.leagueSeason,
      this.leagueLogo,
      this.countryLogo});

  GetLegaModel.fromJson(Map<String, dynamic> json) {
    countryId = json['country_id'];
    countryName = json['country_name'];
    leagueId = json['league_id'];
    leagueName = json['league_name'];
    leagueSeason = json['league_season'];
    leagueLogo = json['league_logo'];
    countryLogo = json['country_logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country_id'] = this.countryId;
    data['country_name'] = this.countryName;
    data['league_id'] = this.leagueId;
    data['league_name'] = this.leagueName;
    data['league_season'] = this.leagueSeason;
    data['league_logo'] = this.leagueLogo;
    data['country_logo'] = this.countryLogo;
    return data;
  }
}
