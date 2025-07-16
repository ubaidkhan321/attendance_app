import 'package:attendace_app/view_model/controller/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    
    Get.lazyPut(()=> SplashController());
  }
}