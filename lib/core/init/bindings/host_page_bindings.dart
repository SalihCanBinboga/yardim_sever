
import 'package:get/get.dart';
import 'package:yardim_sever/view/host/host_screen_viewmodel.dart';

class HostPageBindings implements Bindings{
  @override
  void dependencies() {
    Get.put<HostScreenViewModel>(HostScreenViewModel(), permanent: true);
  }
}