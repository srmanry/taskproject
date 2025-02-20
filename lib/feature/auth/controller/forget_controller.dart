import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/feature/auth/view/otp_screen.dart';

class ForgetPasswordContoller extends GetxController{


  final TextEditingController emailController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void resetPassword() async {
    if (emailController.text.isEmpty) {

      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text('Please enter your email')),
      );

      return;
    }
    try {
      await _auth.sendPasswordResetEmail(email: emailController.text);
      Get.to(OtpScreenView());
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text('Password reset email sent!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text("Error: ${e.toString()}")),
      );
    }
  }


}