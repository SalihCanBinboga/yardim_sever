import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';
import 'package:yardim_sever/core/constants/navigation/navigation_constants.dart';
import 'package:yardim_sever/view/get_help/viewmodel/get_help_viewmodel.dart';
import 'package:yardim_sever/view/widgets/reusable_button.dart';
import 'package:yardim_sever/view/widgets/reusable_textfield.dart';

// ignore: must_be_immutable
class GetHelpScreen extends GetView<GetHelpViewModel> {
  TextEditingController _citField = TextEditingController();
  TextEditingController _districtField = TextEditingController();
  TextEditingController _nameField = TextEditingController();
  TextEditingController _tcNoField = TextEditingController();
  TextEditingController _helpDetailField = TextEditingController();
  TextEditingController _countDownField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetHelpViewModel>(
      init: GetHelpViewModel(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
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
      padding: EdgeInsets.only(top: Get.height * .18),
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(child: ReusableTextField(controller: _citField, hintText: 'Şehir')),
                          SizedBox(width: constraints.maxWidth * .03),
                          Expanded(child: ReusableTextField(controller: _districtField, hintText: 'İlçe')),
                        ],
                      ),
                      SizedBox(height: constraints.maxHeight * .01),
                      Row(
                        children: [
                          Expanded(
                            child: GetX<GetHelpViewModel>(
                              builder: (controller) => DropdownButton<String>(
                                items: controller.getMappedCategories(),
                                value: controller.selectedCategory.value,
                                onChanged: (value) => controller.selectedCategory.value = value,
                                elevation: 0,
                                underline: Container(color: YardimSever.primaryLightBlue, width: double.infinity, height: 0.5),
                              ),
                            ),
                          ),
                          SizedBox(width: constraints.maxWidth * .03),
                          Expanded(child: ReusableTextField(controller: _nameField, hintText: 'Ad ve Soyad'))
                        ],
                      ),
                      SizedBox(height: constraints.maxHeight * .01),
                      ReusableTextField(controller: _tcNoField, hintText: 'T.C Numaranız'),
                      SizedBox(height: constraints.maxHeight * .01),
                      ReusableTextField(controller: _helpDetailField, hintText: 'Yardım Hakkında', maxLines: 4),
                      SizedBox(height: constraints.maxHeight * .01),
                      GetX<GetHelpViewModel>(
                        builder: (controller) => GestureDetector(
                          onTap: () => controller.setCountdownSelection(!controller.isSelectedCountDown.value),
                          child: Row(
                            children: [
                              Checkbox(
                                value: controller.isSelectedCountDown.value,
                                onChanged: (value) => controller.setCountdownSelection(value),
                                activeColor: YardimSever.primaryLightBlue,
                              ),
                              Text('Yardım için geri sayım var mı?'),
                            ],
                          ),
                        ),
                      ),
                      GetX<GetHelpViewModel>(
                        builder: (controller) {
                          if (controller.isSelectedCountDown.value) {
                            return ReusableTextField(controller: _countDownField, hintText: 'Son gün ne zaman?',inputType: TextInputType.datetime);
                          } else {
                            return SizedBox();
                          }
                        },
                      ),
                      SizedBox(height: constraints.maxHeight * .03),
                      ReusableButton(title: 'Yardım İste', onClick: clickGetHelp),
                    ],
                  ),
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
          padding: EdgeInsets.only(top: Get.height * .07, left: Get.width * .04),
          child: Text(
            'Yardım Talep Et',
            style: TextStyle(color: Colors.white, fontSize: Get.width * .09, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  void clickGetHelp() {
    controller.getHelpRequest(city: _citField.value.text, district: _districtField.value.text, name: _nameField.value.text, tcNo: _tcNoField.value.text, detail: _helpDetailField.value.text, countDown: _countDownField.value.text);
  }
}
