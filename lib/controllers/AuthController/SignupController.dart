import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SingUpController extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  signup2();

  signUp();

  goToSignIn();

  genderValue(value);
}

class SingUpControllerImp extends SingUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController password2;
  bool scuretextconfirmpassword = true;
  bool scuretextpassword = true;
  late String gender;
  late String accounType;
  // SignupData signupdata = SignupData(Get.find());
  // MyServices myServices = Get.find();
  List data = [];

  // late StatusRequest statusrequest;
  @override
  goToSignIn() {
    // Get.to(Login());
  }

  onchangepassword() {
    scuretextpassword = scuretextpassword == true ? false : true;
    print(scuretextpassword);
    update();
  }

  onchangeconfirmpassword() {
    scuretextconfirmpassword = scuretextconfirmpassword == true ? false : true;
    update();
  }

  @override
  void onInit() {
    username = TextEditingController();
    password = TextEditingController();

    email = TextEditingController();
    password2 = TextEditingController();

    super.onInit();
  }

  @override
  signup2() {}

  @override
  signUp() {
    if (formstate.currentState!.validate()) {
      print("ok");
    } else {
      print("error");
    }
  }

  @override
  genderValue(value) {
    gender = value;
    update();
    throw UnimplementedError();
  }

  // addPosts(username, email, password, confirmPassword) async {
  //   print(username);

  //   print(" , " + confirmPassword + " , " + password);
  //   print("1");
  //   var respone = await http.post(
  //     Uri.parse(AppLink.signup),
  //     body: {
  //       "username": username
  //       // username.text
  //       ,
  //       "email": email
  //       // email.text
  //       ,
  //       "password": password
  //       // password.text
  //       ,
  //       "password2": confirmPassword
  //       // confirmPassword.text
  //     },
  //   );
  //   print("2");
  //   var responsebody;
  //   responsebody = jsonDecode(respone.body);
  //   print("3");
  //   print(responsebody);
  //   print("4");
  //   update();
  //   return responsebody;
  // }

  // @override
  // signUp() async {
  //   print("1");
  //   if (formstate.currentState!.validate()) {
  //     print("2");
  //     statusrequest = StatusRequest.loading;
  //     print("befor send data ");
  //     var response = await signupdata.postdata(
  //         username.text, email.text, password.text, password2.text);
  //     print("3");
  //     print(response);
  //     statusrequest = handlingData(response);
  //     print("4");
  //     // becuse there is no backend , response will come with no data
  //     // so we will comment this lines
  //     if (statusrequest == StatusRequest.success) {
  //       print("5");
  //       print(response['user']['tokens']['access']);
  //       if (response['message'] == "account created successfully") {
  //         myServices.sharedpreference
  //             .setString("access", '${response['user']['tokens']['access']}');
  //         print("6");
  //         //  Get.to(HomePage());
  //       } else {
  //         // Get.defaultDialog(title: "warning" , middleText: "Email Already Exists") ;
  //         // statusrequest = StatusRequest.failure ;
  //       }
  //     }
  //     update();
  //   } else {}
  // }
}
