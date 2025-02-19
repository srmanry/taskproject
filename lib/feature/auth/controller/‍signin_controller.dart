import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/feature/home/view/home_screen.dart';

class AuthController extends GetxController{
final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;


  void signup() async {

    update();
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
    Get.to(HomeScreenView());
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text('User create successful!'),
        duration: Duration(seconds: 2),
      ),
    );




  }



}