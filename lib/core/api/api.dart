
import 'package:home_advisor/core/api/response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// class to handle all api calls
class Api {
  String _baseUrl = "";

  // method to postData
  // [route] - specifies to which endpoint the data should be send.
  // [mBody] - Parameter to pass the data to the server
  // [header] - parameter to pass tokens
  Future<RespObj> postData(
    String route, {
    String mBody,
    String header,
  }) async {
    // [mHeaders] - Map type variable that stores default header details
    Map<String, String> mHeaders = {
      "Content-type": "application/json",
      'Authorization': 'Bearer $header'
    };

    try {
      http.Response response = await http.post(
        (_baseUrl + route),
        headers: mHeaders,
        body: mBody,
      );

      if (response.statusCode == 200) {
        // If the request was sucessfull the  response body gets parsed to [RespObj]

        return RespObj.fromJson(jsonDecode(response.body));
      } else {
        return RespObj(false, serverError: response.body);
      }
    } catch (error) {
      return RespObj(false, serverError: "Server not available");
    }
  }

  Future<RespObj> getData(
    String route, {
    String mbody,
    String header,
  }) async {
    Map<String, String> mHeaders = {
      "Content-type": "application/json",
      'Authorization': 'Bearer $header'
    };

    try {
      http.Response response = await http.get(
        (_baseUrl + route),
        headers: mHeaders,
      );

      if (response.statusCode == 200) {
        // If the request was sucessfull the  response body gets parsed to [RespObj]
        return RespObj.fromJson(jsonDecode(response.body));
      } else {
        return RespObj(false, serverError: response.body);
      }
    } catch (error) {
      return RespObj(false, serverError: "Server not available");
    }
  }

  Future<RespObj> deleteData(
    String route, {
    String mBody,
    String header,
  }) async {

    Map<String, String> mHeaders = {
      "Content-type": "application/json",
      'Authorization': 'Bearer $header'
    };

    try {
      http.Response response = await http.delete(
        (_baseUrl + route),
        headers: mHeaders,
      );

      if (response.statusCode == 200) {
        // If the request was sucessfull the  response body gets parsed to [RespObj]
        return RespObj.fromJson(jsonDecode(response.body));
      } else {
        return RespObj(false, serverError: response.body);
      }
    } catch (error) {
      return RespObj(false, serverError: "Server not available");
    }
  }
}
