import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../../model/login_model.dart';

class SessionController {
  // Singleton instance
  SessionController._internal();
  static final SessionController _instance = SessionController._internal();
  static SessionController get instance => _instance;

  LoginModel userSession = LoginModel();

  // Save session
  Future<void> setSession(
    int? id,
  ) async {
    userSession.data = Data(id: id);

    const storage = FlutterSecureStorage();
    await storage.write(key: 'id', value: id.toString());
  }

  // Load session
  Future<void> loadSession() async {
    const storage = FlutterSecureStorage();
    final id = await storage.read(key: 'id');
    userSession.data = Data(id: id != null ? int.tryParse(id) : null);

    if (kDebugMode) {
      print("Session Loaded:");
      print("id: ${userSession.data?.id}");
    }
  }

  // Clear session
  Future<void> clearSession() async {
    userSession = LoginModel();

    const storage = FlutterSecureStorage();
    await Future.wait([
      storage.delete(key: 'id'),
    ]);
  }
}
