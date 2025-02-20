import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:task_project/feature/home/view/home_screen.dart';


class SigninController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  void onInit() {
    // TODO: implement onInit

    signin();
    super.onInit();
  }

  void signin() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(Get.context!).showSnackBar( SnackBar(content: Text('Email & Password cannot be empty!')), );  return;
    }

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword( email: email, password: password,);
      Get.offAll(HomeScreenView());
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text('Login Successful!')),
      );
    } catch (e) {
      String errorMessage = "Login failed! Please try again.";
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    }
  }

}
