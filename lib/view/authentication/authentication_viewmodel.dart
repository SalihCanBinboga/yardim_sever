import 'package:get/get.dart';
import 'package:yardim_sever/core/base/model/user_model.dart';
import 'package:yardim_sever/core/constants/navigation/navigation_constants.dart';
import 'package:yardim_sever/core/init/cache/database_helper.dart';

class AuthenticationViewModel extends GetxController {
  DatabaseHelper _databaseHelper = DatabaseHelper();

  void loginUser({String email, String password}) async {
    if (email.isNotEmpty && password.isNotEmpty) {
      UserModel result = await _databaseHelper.getUser(UserModel.forLogin(email, password));
      if (result.userName != null) {
        Get.offNamed(NavigationConstants.HOST);
      }
    }
  }

  void registerUser({String name, String email, String password}) async{
    if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
      int result = await _databaseHelper.createUser(UserModel(name, email, password));
      if (result != null) {
        Get.offNamed(NavigationConstants.HOST);
      }
    }
  }
}
