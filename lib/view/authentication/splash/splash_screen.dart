import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';

import 'splash_screen_viewmodel.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenViewModel>(
      init: SplashScreenViewModel(),
      builder: (controller) => Scaffold(
        body: Container(
          color: YardimSever.primaryLightBlue,
          child: Center(
            child: Text(
              'YardımSever',
              style: TextStyle(color: Colors.white, fontSize: Get.width * .13)
            ),
          ),
        ),
      ),
    );
  }
}
