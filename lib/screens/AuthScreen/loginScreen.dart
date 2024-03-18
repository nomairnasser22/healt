import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:health_app/controllers/AuthController/loginController.dart';
import 'package:health_app/core/function/validInput.dart';
import 'package:health_app/widgets/authWidget/customTextSignupOrSignIn.dart';
import 'package:health_app/widgets/authWidget/custombuttomAuth.dart';
import 'package:health_app/widgets/authWidget/textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginControllerImp controller = Get.find<LoginControllerImp>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            child: ListView(
              children: [
                SizedBox(
                  height: height * 0.3,
                ),
                CustomTextFormField(
                    label: "Email",
                    text: "Enter your Email",
                    suffixicon: Icons.email_outlined,
                    controller: controller.email,
                    validinput: (p0) => ValidInput(p0!, 5, 40, "email"),
                    keyboardType: TextInputType.emailAddress),
                SizedBox(
                  height: height * 0.05,
                ),
                GetBuilder<LoginControllerImp>(
                    builder: (controller) => CustomTextFormField(
                        obscuretext: controller.scuretextpassword,
                        ontap: () => controller.onChangePassword(),
                        label: "Password",
                        text: "Enter your Password",
                        suffixicon: controller.scuretextpassword == true
                            ? Icons.lock_clock_outlined
                            : Icons.lock_open_outlined,
                        controller: controller.email,
                        validinput: (p0) => ValidInput(p0!, 5, 40, "password"),
                        keyboardType: TextInputType.visiblePassword)),
                SizedBox(
                  height: height * 0.02,
                ),
                InkWell(
                    onTap: () {
                      controller.goToForgetPasswordScreen();
                    },
                    child: const Text(
                      "Forget Password ",
                      textAlign: TextAlign.end,
                    )),
                SizedBox(
                  height: height * 0.2,
                ),
                CustomButtonAuth(
                    text: "LogIn",
                    onPressed: () {
                      controller.login();
                    }),
                SizedBox(
                  height: height * 0.2,
                ),
                CustomTextSignUpOrSignIn(
                    text1: "Don't hava an account ? ",
                    text2: " Sign Up",
                    ontap: () {
                      controller.goToSignup();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
