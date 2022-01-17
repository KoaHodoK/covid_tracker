import 'dart:convert';

import 'package:covid_tracker/models/world_state_model.dart';
import 'package:covid_tracker/services/app_urls.dart';
import 'package:http/http.dart' as http;

class StateServices {
  Future<WorldStateModel> fetchWorldStatesRecords() async {
    final response = await http.get(Uri.parse(AppUrl.worldStatesApi));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return WorldStateModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }
}
