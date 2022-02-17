import 'package:api_integration/service/api.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class API_service{

  Future<ApiService> get_data() async{
    var client = http.Client();
    var apiService;

    try {
      var url = 'https://dog.ceo/api/breeds/image/random';
      var response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        apiService = ApiService.fromJson(jsonMap);
      }
      return apiService;
    } 
    catch (Exception) {
      return apiService;
    }


  } 

}