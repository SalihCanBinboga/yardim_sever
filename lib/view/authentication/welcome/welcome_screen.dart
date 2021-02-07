import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';
import 'package:yardim_sever/core/constants/navigation/navigation_constants.dart';
import 'package:yardim_sever/view/widgets/reusable_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: Get.height * .2,
            width: double.infinity,
            decoration: BoxDecoration(
              color: YardimSever.primaryLightBlue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Get.width * .15),
                bottomRight: Radius.circular(Get.width * .15),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Hoşgeldiniz',
            style: TextStyle(
              color: YardimSever.primaryLightBlue,
              fontSize: Get.width * .1,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 32),
          ReusableButton(
            title: 'Giriş Yap',
            onClick: () => Get.toNamed(NavigationConstants.LOGIN),
          ),
          SizedBox(height: 32),
          ReusableButton(
            title: 'Kayıt Ol',
            onClick: () => Get.toNamed(NavigationConstants.LOGIN),
          ),
        ],
      ),
    );
  }
}
