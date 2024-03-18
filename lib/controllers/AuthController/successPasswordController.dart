
import 'package:get/get.dart';
import 'package:health_app/screens/AuthScreen/loginScreen.dart';

abstract class SuccessPasswordController extends GetxController {
  goToPageLogin();
}

class SuccessPasswordControllerImp extends SuccessPasswordController {
  @override
  goToPageLogin() {
    Get.offAll(const LoginScreen());
  }
}
