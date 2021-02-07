import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/navigation/navigation_constants.dart';

class SplashScreenViewModel extends GetxController {
  @override
  void onInit() {
    startTimeout();
    super.onInit();
  }

  void startTimeout() async {
    Future.delayed(Duration(seconds: 3));
    Get.toNamed(NavigationConstants.WELCOME);
  }
}