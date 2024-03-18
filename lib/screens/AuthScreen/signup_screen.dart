import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:health_app/data/static/color.dart';
import 'package:health_app/widgets/authWidget/customTextSignupOrSignIn.dart';
import 'package:health_app/widgets/authWidget/custombuttomAuth.dart';

import '../../controllers/AuthController/SignupController.dart';
import '../../core/function/validInput.dart';
import '../../widgets/authWidget/textformfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SingUpControllerImp controller = Get.put(SingUpControllerImp());
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: width,
          child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  SizedBox(
                    height: height * 0.3,
                  ),
                  CustomTextFormField(
                    controller: controller.username,
                    keyboardType: TextInputType.name,
                    label: "Full Name",
                    text: "Enter Your Full Name ",
                    suffixicon: Icons.person_outline,
                    validinput: (val) {
                      return ValidInput(val!, 5, 40, "username");
                    },
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CustomTextFormField(
                    controller: controller.email,
                    keyboardType: TextInputType.emailAddress,
                    label: "Email",
                    text: "Enter Your Eimal ",
                    suffixicon: Icons.email_outlined,
                    validinput: (val) {
                      return ValidInput(val!, 5, 40, "email");
                    },
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  GetBuilder<SingUpControllerImp>(
                    init: SingUpControllerImp(),
                    builder: (controller) => CustomTextFormField(
                      obscuretext: controller.scuretextpassword,
                      ontap: () {
                        controller.onchangepassword();
                      },
                      controller: controller.password,
                      keyboardType: TextInputType.emailAddress,
                      label: "Password",
                      text: "Enter Your Password ",
                      suffixicon: controller.scuretextpassword == true
                          ? Icons.lock_outline
                          : Icons.lock_open,
                      validinput: (val) {
                        return ValidInput(val!, 5, 40, "password");
                      },
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Radio(
                        value: "Male",
                        groupValue: controller.gender,
                        onChanged: (value) => controller.genderValue(value),
                      ),
                      Radio(
                        value: "Female",
                        groupValue: controller.gender,
                        onChanged: (value) => controller.genderValue(value),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  DropdownMenu(
                      label: const Text("Account type "),
                      onSelected: (value) {
                        controller.accounType = value!;
                      },
                      dropdownMenuEntries: <DropdownMenuEntry<String>>[
                        DropdownMenuEntry(
                            value: "Medical staff", label: "Medical staff"),
                        DropdownMenuEntry(value: "Patient", label: "Patient"),
                      ]),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  CustomButtonAuth(
                      text: "SignUp",
                      onPressed: () {
                        controller.signUp();
                      }),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  CustomTextSignUpOrSignIn(
                    text1: "have an accunt ?",
                    text2: " Sign In",
                    ontap: () => controller.goToSignIn(),
                  )
                ],
              ))),
    );
  }
}
