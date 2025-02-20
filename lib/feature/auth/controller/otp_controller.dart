import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController  extends GetxController{
  final TextEditingController _otpController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  String verificationId = "";

  void verifyOtp() async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: _otpController.text,
      );

      await _auth.signInWithCredential(credential);


      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text('Phone number verified successfully!')),
      );

     // Navigator.pop(Get.context); // Return to the previous screen or home
    } catch (e) {

      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text("Invalid OTP: ${e.toString()}")),
      );
    }
  }
}