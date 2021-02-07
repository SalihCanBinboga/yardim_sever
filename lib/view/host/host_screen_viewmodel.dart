import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/view/account/view/account_screen.dart';
import 'package:yardim_sever/view/get_help/view/get_help_screen.dart';
import 'package:yardim_sever/view/help/view/help_screen.dart';

class HostScreenViewModel extends GetxController{
  final List<Widget> pages = <Widget>[GetHelpScreen(), HelpScreen(), AccountScreen()];
  RxInt _selectedPage = 1.obs;
  int get selectedPage => _selectedPage.value;


  void selectPage(int page) => _selectedPage.value = page;
}