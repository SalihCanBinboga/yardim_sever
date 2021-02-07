import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';
import 'package:yardim_sever/core/constants/image/image_constants.dart';
import 'package:yardim_sever/view/host/host_screen_viewmodel.dart';

class HostScreen extends GetView<HostScreenViewModel> {
  // BottomNavigation barın yönetilmesini sağlayan ekran
  @override
  Widget build(BuildContext context) {
    return GetX<HostScreenViewModel>(
      builder: (controller) => Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: IndexedStack(
          children: controller.pages,
          index: controller.selectedPage,
        ),
        bottomNavigationBar: bottomNavigation(controller),
      ),
    );
  }

  Container bottomNavigation(HostScreenViewModel controller) {
    return Container(
      height: Get.height * .12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
        boxShadow: [BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 1)],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
        child: BottomNavigationBar(
          currentIndex: controller.selectedPage,
          type: BottomNavigationBarType.fixed,
          onTap: (id) => controller.selectPage(id),
          selectedItemColor: YardimSever.primaryLightBlue,
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Image.asset(ImageConstants.instance.icGetHelp), label: 'Yardım Al'),
            BottomNavigationBarItem(icon: Image.asset(ImageConstants.instance.icHelp), label: 'Yardım Et'),
            BottomNavigationBarItem(icon: Image.asset(ImageConstants.instance.icAccount), label: 'Hesabım'),
          ],
        ),
      ),
    );
  }
}
