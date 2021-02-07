import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';

import 'core/constants/navigation/navigation_constants.dart';
import 'core/init/navigation/navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
        initialRoute: NavigationConstants.SPLASH,
        getPages: Navigation.instance.navigationList,
      );
  }
}
