import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';
import 'package:yardim_sever/core/constants/navigation/navigation_constants.dart';
import 'package:yardim_sever/view/widgets/reusable_button.dart';
import 'package:yardim_sever/view/widgets/reusable_textfield.dart';

import '../authentication_viewmodel.dart';

// ignore: must_be_immutable
class RegisterScreen extends GetView<AuthenticationViewModel> {
  TextEditingController _nameField = TextEditingController();
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
                    ReusableTextField(controller: _nameField, hintText: 'Adınız'),
                    SizedBox(height: constraints.maxHeight * .03),
                    ReusableTextField(controller: _mailField, hintText: 'E-Mail'),
                    SizedBox(height: constraints.maxHeight * .03),
                    ReusableTextField(controller: _passwordField, hintText: 'Şifreniz'),
                    SizedBox(height: constraints.maxHeight * .03),
                    ReusableButton(title: 'Kayıt Ol', onClick: clickRegister),
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
          padding: EdgeInsets.only(top: Get.height * .07, left: Get.width * .02),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(icon: Icon(Icons.arrow_back, color: Colors.white), onPressed: Get.back),
              SizedBox(width: 16),
              Text(
                'Kayıt Ol',
                style: TextStyle(color: Colors.white, fontSize: Get.width * .1, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void clickRegister() {
    // todo empty controller yapılacak
    Get.offNamed(NavigationConstants.HOST);
  }

  void clickForgetPassword() {}
}
