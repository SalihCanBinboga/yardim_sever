import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';

class ReusableTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  final TextInputType inputType;

  const ReusableTextField({Key key, this.controller, this.hintText, this.maxLines, this.inputType}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines ?? 1,
      keyboardType: inputType,
      style: TextStyle(color: YardimSever.grey, fontSize: Get.width * .04, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: YardimSever.grey)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: YardimSever.primaryLightBlue)),
        hintText: hintText ?? '',
        hintStyle: TextStyle(color: YardimSever.grey, fontSize: Get.width * .04),
      ),
    );
  }
}
