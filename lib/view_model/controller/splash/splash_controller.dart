import 'dart:async';
import 'package:attendace_app/view_model/controller/session/session_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadSession();
    });
  }

  Timer? _timer;
  Future<void> _loadSession() async {
    final session = SessionController.instance;
    await session.loadSession();
    session
        .loadSession()
        .then((value) => _timer = Timer(const Duration(seconds: 1), () {
              if (session.userSession.data!.id != null) {
                Get.snackbar("Dashboard", "screen");
              } else {
                Get.snackbar("Login", "Screen");
              }
            }));
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
