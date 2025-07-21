import 'dart:convert';

import 'package:attendace_app/data/network/base.network.dart';
import 'package:attendace_app/resource/constant/globals.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NetworkApiClass extends BaseNetworkApi {
  Map<String, String> headers = {
    "secretkey": Global.SECRET_KEY,
  };

  @override
  Future<dynamic> postApi(String url, Map<String, dynamic> body) async {
    try {
      final response =
          await http.post(Uri.parse(url), headers: headers, body: body);
      if (response.statusCode == 200) {
        if (kDebugMode) {
          print(body);
        }
        return jsonDecode(response.body);
      } else {
        throw Exception("Failed to load");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
