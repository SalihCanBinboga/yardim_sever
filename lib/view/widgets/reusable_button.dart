import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';

class ReusableButton extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final TextStyle titleStyle;
  final Color backgroundColor;
  final VoidCallback onClick;

  const ReusableButton({Key key, this.width, this.height, @required this.title, this.titleStyle, this.backgroundColor, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width * .7,
      height: height ?? 45,
      child: RaisedButton(
        onPressed: onClick,
        child: Text(title, style: titleStyle ?? TextStyle(color: Colors.white, fontSize: Get.width * .07)),
        color: backgroundColor ?? YardimSever.primaryLightBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28))),
      ),
    );
  }
}
