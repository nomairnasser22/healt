import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/controllers/AuthController/forgetPasswordController.dart';
import 'package:health_app/core/function/validInput.dart';
import 'package:health_app/data/static/color.dart';
import 'package:health_app/widgets/authWidget/customTextbody.dart';
import 'package:health_app/widgets/authWidget/custombuttomAuth.dart';
import 'package:health_app/widgets/authWidget/customtexttitle.dart';
import 'package:health_app/widgets/authWidget/textformfield.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  ForgetPasswordControllerImp controller = Get.find<ForgetPasswordControllerImp>();
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(child: Scaffold(
      
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorApp.background,
          elevation: 0.0 ,
          title:  Text("Forget Password" , 
            style: Theme.of(context).textTheme.titleMedium ,
          ) ,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 15 , horizontal: 35 ),
          child: ListView(
            children:   [
              const CustomTextTitleAuth(text: "Check Email") ,
              const SizedBox(height: 20,),

              const CustomTextBodyAuth(text: 
              "please Enter Your Email Address To Recive a verification code"),

              const SizedBox(height: 30,),

              CustomTextFormField(
                controller: controller.email,   
                keyboardType: TextInputType.emailAddress ,
                validinput: (val){
                  return ValidInput(val!, 5, 40, "email");
                },
                // controller: controller.email,
                label: "email" , 
                text: "Enter Your Email ",
                suffixicon: Icons.person_outline,
                ),

              const SizedBox(height: 20 ,) ,

              CustomButtonAuth(text: " Check ",onPressed: (){controller.goToVerfiycode();} ,),

              const SizedBox(height: 40 ,),
            ],
          ),
        ),
        backgroundColor:ColorApp.background,
      ),
    ) ;
  }
}
