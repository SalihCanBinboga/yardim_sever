import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/navigation/navigation_constants.dart';

class SplashScreenViewModel extends GetxController {
  @override
  void onInit() {
    startTimeout();
    super.onInit();
  }

  void startTimeout() async {
    await Future.delayed(Duration(seconds: 3));
    Get.offNamed(NavigationConstants.WELCOME);
  }
}