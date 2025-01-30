import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sports_app/Data/Models/Players_Model.dart';
// import 'package:search_list_api_working/user_model.dart';

class SearchPlayerRepo {
  var data = [];
  List<PlayersData> results = [];
  // String urlList =
  //     "https://apiv2.allsportsapi.com/football/?&met=Players&&APIkey=61137bf4d63c0690e661ea062464a5395e88b5b45347ba0957f70fef270013b2";

  Future<List<PlayersData>> searchPlayer(
      {String? query, String? teamID}) async {
    //var url = Uri.parse(urlList);
    //var response = await http.get(url);
    try {
      var response = await http.get(Uri.parse(
          "https://apiv2.allsportsapi.com/football/?&met=Players&teamId=${teamID}&APIkey=61137bf4d63c0690e661ea062464a5395e88b5b45347ba0957f70fef270013b2"));

      if (response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((e) => PlayersData.fromJson(e)).toList();
        // if (query!= null){
        //   results = results.where((element) => element.result.!.toLowerCase().contains((query.toLowerCase()))).toList();
        // }
      } else {
        print("fetch error");
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}
