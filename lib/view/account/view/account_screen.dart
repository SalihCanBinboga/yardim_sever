import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';
import 'package:yardim_sever/core/constants/image/image_constants.dart';
import 'package:yardim_sever/core/constants/navigation/navigation_constants.dart';
import 'package:yardim_sever/view/account/viewmodel/account_viewmodel.dart';
import 'package:yardim_sever/view/widgets/menu_item.dart';
import 'package:yardim_sever/view/widgets/reusable_button.dart';
import 'package:yardim_sever/view/widgets/reusable_textfield.dart';

// ignore: must_be_immutable
class AccountScreen extends GetView<AccountViewModel> {
  TextEditingController _nameField = TextEditingController();
  TextEditingController _mailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountViewModel>(
      builder: (controller) => Scaffold(
        body: Stack(
          children: <Widget>[
            appBar,
            fieldMaterialCard,
          ],
        ),
      ),
    );
  }

  Padding get fieldMaterialCard {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * .28),
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: Get.width * .85,
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            elevation: 2.5,
            child: LayoutBuilder(
              builder: (context, constraints) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    MenuItem(title: 'Yardım Taleplerim', startIcon: Icon(Icons.remove_from_queue_sharp, color: YardimSever.primaryLightBlue)),
                    MenuItem(title: 'Yardımlarım', startIcon: Icon(Icons.help, color: YardimSever.primaryLightBlue)),
                    MenuItem(title: 'Takip Ettiğim Yardım İstekleri', startIcon: Icon(Icons.follow_the_signs, color: YardimSever.primaryLightBlue)),
                    MenuItem(title: 'Yardım Filtrelerim', startIcon: Icon(Icons.filter, color: YardimSever.primaryLightBlue)),
                    MenuItem(title: 'Yardım Talebi Rapolarım', startIcon: Icon(Icons.report_problem, color: YardimSever.primaryLightBlue)),
                    MenuItem(title: 'Rapor Al', startIcon: Icon(Icons.report, color: YardimSever.primaryLightBlue)),
                    MenuItem(title: 'Çıkış Yap', startIcon: Icon(Icons.exit_to_app, color: YardimSever.primaryLightBlue), onClick: clickLogout),
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
        height: Get.height * .285,
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(ImageConstants.instance.icAccount, color: Colors.white),
                    CircleAvatar(radius: 40, backgroundColor: Colors.white),
                    Icon(Icons.settings, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 4),
              Text('Salih Can', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: Get.width * .05)),
              Text('+90 530 654 8815', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: Get.width * .03)),
            ],
          ),
        ),
      ),
    );
  }

  void clickLogout() {}
}
