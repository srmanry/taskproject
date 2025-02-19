import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:task_project/feature/home/view/home_screen.dart';


class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit

    signup();
    super.onInit();
  }

  void signup() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text('Email & Password cannot be empty!')),); return;}
    if (!GetUtils.isEmail(email)) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(content: Text('Invalid email format!'))      ); return;}

    if (password.length < 6) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text('Password must be at least 6 characters long!')),);return;}

    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(  email: email, password: password,);
      Get.to(HomeScreenView());
      ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(content: Text('User created successfully!')),);
    } catch (e) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text("Signup failed! Please try again.")),
      );
    }
  }


}
