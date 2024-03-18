import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/controllers/AuthController/verfiyCodeController.dart';
import 'package:health_app/data/static/color.dart';
import 'package:health_app/widgets/authWidget/customTextbody.dart';
import 'package:health_app/widgets/authWidget/customtexttitle.dart';


class VerfiyCodepasswordScreen extends StatelessWidget {
  const VerfiyCodepasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    VerfiyCodePasswordControllerImp controller =
        Get.put(VerfiyCodePasswordControllerImp());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorApp.background,
          elevation: 0.0,
          title: Text(
            "verificatoin Code",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: ListView(
            children: [
              const CustomTextTitleAuth(text: "Check Code "),

              const SizedBox(
                height: 20,
              ),

              const CustomTextBodyAuth(
                  text:
                      "Please Enter The Digit Code Sent To nomairnasser@gmail.com "),

              const SizedBox(
                height: 30,
              ),

              // add package flutter_otp_text_field

              // OtpTextField(
              //   fieldWidth: 50.0,
              //   borderRadius: BorderRadius.circular(20.0),
              //   numberOfFields: 5,
              //   borderColor: const Color(0xff512da8),
              //   showFieldAsBox: true,
              //   onCodeChanged: (string) {},
              //   onSubmit: (String verificationCode) {
              //     controller.goToResetPassword();
              //   },
              // ),

              const SizedBox(
                height: 20,
              ),

              //CustomButtonAuth(text: " Check ",onPressed: (){} ,),

              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        backgroundColor: ColorApp.background,
      ),
    );
  }
}
