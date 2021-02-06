import 'package:get/get.dart';
import '../../../view/authentication/authentication_viewmodel.dart';

class StartBindings implements Bindings{
  @override
  void dependencies() {
    Get.put<AuthenticationViewModel>(AuthenticationViewModel(), permanent: true); // Burada splash screen başlatılmadan singleton olarak ilgili sınıf ayağa kalkıyor.
  }
}