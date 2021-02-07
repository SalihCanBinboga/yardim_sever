import 'package:get/get.dart';
import 'package:yardim_sever/core/init/bindings/start_bindings.dart';
import 'package:yardim_sever/view/authentication/login/login_screen.dart';
import 'package:yardim_sever/view/authentication/register/register_screen.dart';
import 'package:yardim_sever/view/authentication/splash/splash_screen.dart';
import 'package:yardim_sever/view/authentication/welcome/welcome_screen.dart';
import 'package:yardim_sever/view/host/host_screen.dart';
import '../../constants/navigation/navigation_constants.dart';

class Navigation {
  static Navigation _instance;
  static Navigation get instance => _instance ??= Navigation._init();
  Navigation._init();

  List<GetPage> navigationList = [
    GetPage(name: NavigationConstants.SPLASH, page: () => SplashScreen(), transition: Transition.noTransition,binding: StartBindings()),
    GetPage(name: NavigationConstants.WELCOME, page: () => WelcomeScreen(), transition: Transition.noTransition),
    GetPage(name: NavigationConstants.LOGIN, page: () => LoginScreen(), transition: Transition.noTransition),
    GetPage(name: NavigationConstants.REGISTER, page: () => RegisterScreen(), transition: Transition.noTransition),
    GetPage(name: NavigationConstants.HOST, page: () => HostScreen(), transition: Transition.noTransition),
  ];
}
