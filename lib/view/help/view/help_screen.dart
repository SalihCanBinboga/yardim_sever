import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';
import 'package:yardim_sever/view/help/viewmodel/help_viewmodel.dart';
import 'package:yardim_sever/view/widgets/help_list_item.dart';

class HelpScreen extends GetView<HelpViewModel> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HelpViewModel>(
      builder: (controller) => Scaffold(
        backgroundColor: YardimSever.whiteBlur,
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
      padding: EdgeInsets.only(top: Get.height * .13),
      child: Align(
        alignment: Alignment.topCenter,
        child: ListView.builder(
          itemBuilder: (context, index) => HelpListItem(
            index: index,
            clickHelpDetail: () {},
          ),
          itemCount: 5,
        ),
      ),
    );
  }

  Align get appBar {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: Get.height * .28,
        width: double.infinity,
        decoration: BoxDecoration(
          color: YardimSever.primaryLightBlue,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Get.width * .15),
            bottomRight: Radius.circular(Get.width * .15),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: Get.height * .07, left: Get.width * .04),
          child: Text(
            'Yardım Et',
            style: TextStyle(color: Colors.white, fontSize: Get.width * .065, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
