import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:task_project/feature/auth/controller/auth_controller.dart';

import 'package:task_project/util/dimensions.dart';
import 'package:task_project/util/style.dart';
import 'package:task_project/widgets/cumstom_textfild.dart';

import 'otp_screen.dart';

class SighUpScreen extends StatelessWidget {


   AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar( backgroundColor: Colors.cyan, centerTitle: true,
        title:  Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 14.sp),),
        foregroundColor: Colors.white,),

      body: Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SizedBox(height: 100.h,),


              Padding( padding: EdgeInsets.all(8.0),child: Text("Email",style: textMedium.copyWith(fontSize: 14.sp),), ),
              CustomTextField(controller:authController.emailController,
                focusColor: Colors.black,hinText: "Email",),
              SizedBox(height: Dimensions.fifTeen,),
               Padding( padding: EdgeInsets.all(8.0),child: Text("Password",style: textMedium.copyWith(fontSize: 14.sp),), ),
              CustomTextField(controller: authController.passwordController, focusColor: Colors.black,hinText: "password",
                obscureText: true, suffixIcon: Icon(Icons.visibility),),
              SizedBox(height: Dimensions.fifty,),

              InkWell(
                child: Container( height: 45.h, decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.defaultSize),  color: Colors.cyan,),
                  child:  Center(child: Text("Sign up",style: TextStyle(fontSize: 18.sp,color: Colors.white),),),),

                onTap: (){
                  authController.signup();
                },),

              const SizedBox(height: Dimensions.defaultSize,),
            ],),
        ),
      ),

    );
  }
}
