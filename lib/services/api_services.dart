import 'dart:convert';

import 'package:home_advisor/ui/main_category/main_categ_model.dart';
import 'package:home_advisor/ui/service_page/services_page_model.dart';
import 'package:home_advisor/ui/sub_category/sub_categ_model.dart';
import 'package:http/http.dart' as http;

class URLS {
  static const String baseURL = 'http://13.233.219.30/api/';
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
      return null;
    }
  }

  static Future<ServicesPageModel> getServices(String token) async {
    final response = await http.get('${URLS.baseURL}service', headers: {
      'Content-Type': 'application/json',
      'Authorization': "Bearer $token",
    });

    if (response.statusCode == 200) {
      print(response.statusCode);
      return ServicesPageModel.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}
