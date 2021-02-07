import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';
import 'package:yardim_sever/view/widgets/reusable_button.dart';
import 'package:yardim_sever/view/widgets/reusable_textfield.dart';

import '../authentication_viewmodel.dart';

class LoginScreen extends GetView<AuthenticationViewModel> {
  TextEditingController _mailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          appBar,
          fieldMaterialCard,
        ],
      ),
    );
  }

  Padding get fieldMaterialCard {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * .23),
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: Get.width * .85,
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            elevation: 2.5,
            child: LayoutBuilder(
              builder: (context, constraints) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ReusableTextField(controller: _mailField, hintText: 'E-Mail'),
                    SizedBox(height: constraints.maxHeight * .03),
                    ReusableTextField(controller: _passwordField, hintText: 'Şifreniz'),
                    SizedBox(height: 2),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        child: Text(
                          'Şifremi Unuttum',
                          style: TextStyle(color: YardimSever.grey),
                        ),
                        onPressed: clickForgetPassword,
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * .015),
                    ReusableButton(title: 'Giriş Yap', onClick: clickLogin),
                    SizedBox(height: constraints.maxHeight * .03),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Align get appBar {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: Get.height * .33,
        width: double.infinity,
        decoration: BoxDecoration(
          color: YardimSever.primaryLightBlue,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Get.width * .15),
            bottomRight: Radius.circular(Get.width * .15),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: Get.height * .07, left: Get.width * .05),
          child: Text(
            'Giriş Yap',
            style: TextStyle(color: Colors.white, fontSize: Get.width * .1, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  void clickLogin() {}

  void clickForgetPassword() {}
}
