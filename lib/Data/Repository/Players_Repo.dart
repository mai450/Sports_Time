import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sports_app/Data/Models/Players_Model.dart';
// Import the model class

class GetPlayerRepo {
  Future<List<PlayersData>?> getPlayer(String playerName) async {
    final String url =
        'https://apiv3.apifootball.com/?action=get_players&player_name=$playerName&APIkey=38a0ae72c4ccaaf68452abb45e271656bc3c7bce6f74cff950088b405d15b041'; // Replace with your actual API key
    try {
      var response = await http.get(Uri.parse(url));

      print('Response Body: ${response.body}');
      print('Response Status Code: ${response.statusCode}');

      if (response.statusCode == 200) {
        var decodedResponse = jsonDecode(response.body);

        // Check if the response contains player data (may vary based on your API structure)
        if (decodedResponse is List) {
          List<PlayersData> players = decodedResponse
              .map((json) => PlayersData.fromJson(json))
              .toList();
          return players;
        } else {
          print('Error: No players found.');
          return null;
        }
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
