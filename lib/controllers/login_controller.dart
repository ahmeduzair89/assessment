import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController? emailController;
  TextEditingController? phoneController;
  TextEditingController? passwordController;
  bool isEmailValid = false;
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    // emailController!.addListener(() {
    //   checkForValidEmail();
    // });
  }

  checkForValidEmail() {
    if (emailController!.text.isEmpty) {
      isEmailValid = false;
    } else {
      isEmailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(emailController!.text);
    }
    update();
  }
}
