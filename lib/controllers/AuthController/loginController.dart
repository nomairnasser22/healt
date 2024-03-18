import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/screens/AuthScreen/forgetpassword.dart';
import 'package:health_app/screens/AuthScreen/signup_screen.dart';

abstract class LoginController extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  onChangePassword();

  login();

  goToSignup();

  goToForgetPasswordScreen();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  late bool scuretextpassword;

  @override
  void onInit() {
    // TODO: implement onInit
    email = new TextEditingController();
    password = new TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    email.clear();
    password.clear();
    super.onClose();
  }

  @override
  login() {
    throw UnimplementedError();
  }

  @override
  onChangePassword() {
    scuretextpassword = scuretextpassword == true ? false : true;
    update();
  }

  @override
  goToSignup() {
    Get.off(SignUpScreen());
  }

  @override
  goToForgetPasswordScreen() {
    Get.to(ForgetPasswordScreen());
  }
}
