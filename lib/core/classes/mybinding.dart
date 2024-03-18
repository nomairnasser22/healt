import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:health_app/controllers/AuthController/SignupController.dart';
import 'package:health_app/controllers/AuthController/forgetPasswordController.dart';
import 'package:health_app/controllers/AuthController/loginController.dart';

class Mybinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginControllerImp());
    Get.put(SingUpControllerImp());
    Get.put(ForgetPasswordControllerImp());
  }
}
