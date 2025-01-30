import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/TopScorers_Model.dart';

class GetTopScorersRepo {
  Future<List<TopScorersData>?> getTopScorers(String legaID) async {
    // String apiKey =
    //     "61137bf4d63c0690e661ea062464a5395e88b5b45347ba0957f70fef270013b2";
    try {
      var response = await http.get(
        Uri.parse(
            "https://apiv3.apifootball.com/?action=get_topscorers&league_id=${legaID}&APIkey=38a0ae72c4ccaaf68452abb45e271656bc3c7bce6f74cff950088b405d15b041"),
      );

      if (response.statusCode == 200) {
        var decodedResponse = jsonDecode(response.body);

        List<TopScorersData> topScore = (decodedResponse as List)
            .map((json) => TopScorersData.fromJson(json))
            .toList();

        return topScore;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}
