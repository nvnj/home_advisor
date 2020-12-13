import 'dart:convert';

import 'package:home_advisor/ui/main_category/main_categ_model.dart';
import 'package:home_advisor/ui/sub_category/sub_categ_model.dart';
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
      return MainCategResponse.fromJson(jsonDecode(response.body));
    } else {
      print(" hi nidhin");
      return null;
    }
  }

  static Future<SubCategModel> getSubCateg(String token) async {
    final response = await http.get('${URLS.baseURL}subcategory', headers: {
      'Content-Type': 'application/json',
      'Authorization': "Bearer $token",
    });

    if (response.statusCode == 200) {
      print(response.statusCode);
      return SubCategModel.fromJson(jsonDecode(response.body));
    } else {
      print(" hi nidhin");
      return null;
    }
  }
}
