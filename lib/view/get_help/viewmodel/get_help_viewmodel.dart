import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';

class GetHelpViewModel extends GetxController {
  final List<String> helpCategories = <String>['Kategori 1', 'Kategori 2', 'Kategori 3'];
  final RxString selectedCategory = 'Kategori 1'.obs;
  final RxBool isSelectedCountDown = false.obs;

  List<DropdownMenuItem<String>> getMappedCategories() {
    return helpCategories.map((e) => DropdownMenuItem(child: Text(e, style: TextStyle(color: YardimSever.grey, fontSize: Get.width * .04)), value: e)).toList();
  }

  setCountdownSelection(bool value) => isSelectedCountDown.value = value;

  void getHelpRequest({String city, String district, String name, String tcNo, String detail, String countDown}) {
    // todo countdown isSelectedcountdown değeri false ise null gelebilir!
  }
}
