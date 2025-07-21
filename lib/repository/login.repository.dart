import 'package:attendace_app/data/network/base.network.dart';
import 'package:attendace_app/data/network/network.api.dart';
import 'package:attendace_app/model/login_model.dart';
import 'package:attendace_app/resource/constant/globals.dart';
import 'package:flutter/foundation.dart';

class LoginRepository {
  static BaseNetworkApi apiService = NetworkApiClass();
  static String secretkey = Global.SECRET_KEY;
  static String loginApi = Global.loginUrl;
  static Future<LoginModel> login(
    String userEmail,
    String password,
  ) async {
    try {
      final response = await apiService
          .postApi(loginApi, {"email": userEmail, 'password': password});
      if (kDebugMode) {
        print(" login Respone  $response");
      }

      return LoginModel.fromJson(response);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      rethrow;
    }
  }
}
