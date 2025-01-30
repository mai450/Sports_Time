import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sports_app/Data/Models/Lega_Model.dart';

class GetLegaRepo {
  Future<List<GetLegaModel>?> getLega(String countryID) async {
    try {
      var response = await http.get(Uri.parse(
              'https://apiv3.apifootball.com/?action=get_leagues&country_id=${countryID}&APIkey=38a0ae72c4ccaaf68452abb45e271656bc3c7bce6f74cff950088b405d15b041')
          //"https://apiv2.allsportsapi.com/football/?met=Leagues&countryId=${countryID}&APIkey=38a0ae72c4ccaaf68452abb45e271656bc3c7bce6f74cff950088b405d15b041"),
          );
      print('Response Body: ${response.body}');
      print('Response Status Code: ${response.statusCode}');

      if (response.statusCode == 200) {
        var decodedResponse = jsonDecode(response.body);

        // Parse the list of countries
        List<GetLegaModel> legs = (decodedResponse as List)
            .map((json) => GetLegaModel.fromJson(json))
            .toList();

        return legs;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}
