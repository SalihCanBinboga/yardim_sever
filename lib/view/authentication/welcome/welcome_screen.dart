import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';
import 'package:yardim_sever/core/constants/navigation/navigation_constants.dart';

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
          SizedBox(
            width: Get.width * .7,
            height: 45,
            child: RaisedButton(
              onPressed: () => Get.toNamed(NavigationConstants.LOGIN),
              child: Text('Giriş Yap', style: TextStyle(color: Colors.white, fontSize: Get.width * .07)),
              color: YardimSever.primaryLightBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28))),
            ),
          ),
          SizedBox(height: 32),
          SizedBox(
            width: Get.width * .7,
            height: 45,
            child: RaisedButton(
              onPressed: () => Get.toNamed(NavigationConstants.REGISTER),
              child: Text('Kayıt Ol', style: TextStyle(color: Colors.white, fontSize: Get.width * .07)),
              color: YardimSever.primaryLightBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28))),
            ),
          ),
        ],
      ),
    );
  }
}
