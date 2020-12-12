import 'dart:convert';

import 'package:home_advisor/ui/main_category/main_categ_model.dart';
import 'package:http/http.dart' as http;

class URLS {
  static const String baseURL = 'https://home-advisor-app.herokuapp.com/api/';
}

class APIServices {
  static Future<MainCategResponse> getCateg(String token) async {
    final response = await http.get('${URLS.baseURL}category', headers: {
      'Content-Type': 'application/json',
      'Authorization': "Bearer $token",
    });

    if (response.statusCode == 200) {
      return MainCategResponse.fromJson(response.body);
    } else {
      print(" hi nidhin");
      return null;
    }
  }

  static Future<List<dynamic>> getSubCateg() async {
    final response = await http.get('${URLS.baseURL}/subcategory');
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return null;
    }
  }
}
