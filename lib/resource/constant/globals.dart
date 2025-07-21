// ignore_for_file: non_constant_identifier_names

import 'package:flutter_config/flutter_config.dart';

class Global {
  static String SECRET_KEY = FlutterConfig.get('SECRET_KEY');
  static String BASE_URL = FlutterConfig.get('Base_Url');
  static String loginUrl = '$BASE_URL/api/check-auth';
}
