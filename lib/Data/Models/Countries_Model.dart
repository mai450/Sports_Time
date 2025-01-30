// class CountriesData {
//   CountriesData({
//     required this.success,
//     required this.result,
//   });
//   late final int success;
//   late final List<Result> result;

//   CountriesData.fromJson(Map<String, dynamic> json) {
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
//     required this.countryKey,
//     required this.countryName,
//     this.countryIso2,
//     this.countryLogo,
//   });
//   late final int countryKey;
//   late final String countryName;
//   late final String? countryIso2;
//   late final String? countryLogo;

//   Result.fromJson(Map<String, dynamic> json) {
//     countryKey = json['country_key'];
//     countryName = json['country_name'];
//     countryIso2 = json['country_Iso2'];
//     countryLogo = json['country_logo'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['country_key'] = countryKey;
//     _data['country_name'] = countryName;
//     _data['country_iso2'] = countryIso2;
//     _data['country_logo'] = countryLogo;
//     return _data;
//   }
// }

// class CountriesData {
//   String? countryId;
//   String? countryName;
//   String? countryLogo;

//   CountriesData({this.countryId, this.countryName, this.countryLogo});

//   CountriesData.fromJson(Map<String, dynamic> json) {
//     countryId = json['country_id'];
//     countryName = json['country_name'];
//     countryLogo = json['country_logo'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['country_id'] = this.countryId;
//     data['country_name'] = this.countryName;
//     data['country_logo'] = this.countryLogo;
//     return data;
//   }
// }

class CountriesData {
  final String countryId;
  final String countryName;
  final String countryLogo;
  CountriesData({
    required this.countryId,
    required this.countryName,
    required this.countryLogo,
  });

  factory CountriesData.fromJson(Map<String, dynamic> json) {
    return CountriesData(
      countryId: json['country_id'] ?? '',
      countryName: json['country_name'] ?? '',
      countryLogo: json['country_logo'] ?? "",
    );
  }
}
