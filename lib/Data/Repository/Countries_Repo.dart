import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sports_app/Data/Models/Countries_Model.dart';

class GetCountriesRepo {
  Future<List<CountriesData>?> getCountries() async {
    // final String url =
    //     'https://free-api-live-football-data.p.rapidapi.com/football-get-all-countries';
    //     final Map<String, String> headers = {
    //   'x-rapidapi-key':
    //           '9b91f27553msh2f52b57bbc0a73ap138f1ajsnd758319a9d31' // Your RapidAPI key here

    // };

    try {
      var response = await http.get(
          //Uri.parse(url) , headers: headers
          Uri.parse(
              "https://apiv3.apifootball.com/?action=get_countries&APIkey=38a0ae72c4ccaaf68452abb45e271656bc3c7bce6f74cff950088b405d15b041"));

      print('Response Body: ${response.body}');
      print('Response Status Code: ${response.statusCode}');

      if (response.statusCode == 200) {
        // Decode the JSON response
        var decodedResponse = jsonDecode(response.body);

        // Parse the list of countries
        List<CountriesData> countries = (decodedResponse as List)
            .map((json) => CountriesData.fromJson(json))
            .toList();

        return countries;
      } else {
        print('Error: Status Code is ${response.statusCode}');
        return null;
      }
    } catch (error) {
      print('Error: $error');
      return null;
    }
  }
}
