import 'dart:convert';
import 'package:covid_tracker/models/countries_list_model.dart';
import 'package:covid_tracker/models/worldstates_model.dart';
import 'package:covid_tracker/services/app_urls.dart';
import 'package:http/http.dart' as http;

class StateServices {
  Future<WorldStatesModel> fetchWorldStatesRecords() async {
    final response = await http.get(Uri.parse(AppUrl.worldStatesApi));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return WorldStatesModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }

  Future<List<dynamic>> fetchWorldCountriesRecords() async {
    var data;
    final response = await http.get(Uri.parse(AppUrl.countiresList));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Error');
    }
  }
}
