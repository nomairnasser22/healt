import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/screens/AuthScreen/verfiyCodeScreen.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();

  goToVerfiycode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;

  @override
  checkemail() {}

  @override
  goToVerfiycode() {
    Get.to(VerfiyCodepasswordScreen());
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
