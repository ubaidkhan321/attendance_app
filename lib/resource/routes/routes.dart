import 'package:attendace_app/resource/routes/page.dart';
import 'package:attendace_app/view/splash/splash.dart';
import 'package:attendace_app/view_model/binding/splash/splash_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class Pages{
  static Transition get _routeTransition => Transition.rightToLeft;
  static Route<dynamic>? onGenerateRoute(RouteSettings setting){
  switch (setting.name) {
    case Routes.SPLASH_VIEW:
    return  GetPageRoute(
      settings:setting,
      page: ()=> const SplashView(),
      binding: SplashBinding(),
      transition: _routeTransition


    );
      
    
    default:
    return null;
  }
  }
}