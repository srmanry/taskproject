
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:task_project/feature/auth/controller/auth_controller.dart';
import 'package:task_project/feature/auth/controller/signin_controller.dart';
import 'package:task_project/feature/auth/view/forget_passwordscreen.dart';
import 'package:task_project/feature/auth/view/sigh_up_screen.dart';
import 'package:task_project/util/dimensions.dart';
import 'package:task_project/util/style.dart';
import 'package:task_project/widgets/cumstom_textfild.dart';

import 'otp_screen.dart';

class SignInScreenView extends StatefulWidget {
  const SignInScreenView({super.key});

  @override
  State<SignInScreenView> createState() => _SignInScreenViewState();
}

class _SignInScreenViewState extends State<SignInScreenView> {

  SigninController signInController = Get.put(SigninController());
  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar( backgroundColor: Colors.cyan,
        centerTitle: true,
        title:  Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 16.sp),),
        foregroundColor: Colors.white,),

      body: Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SizedBox(height: 100.h,),
              Padding( padding: EdgeInsets.all(8.0),child: Text("Email",style: textMedium.copyWith(fontSize: 14.sp),), ),
              CustomTextField(controller: signInController.emailController,
                focusColor: Colors.black,hinText: "Email ",),
              SizedBox(height: Dimensions.fifTeen,),
               Padding( padding: EdgeInsets.all(8.0),child: Text("Password",style: textMedium.copyWith(fontSize: 14.sp),), ),
              CustomTextField(controller: signInController.passwordController, focusColor: Colors.black,hinText: "password",
                obscureText: true, suffixIcon: Icon(Icons.visibility),),
              SizedBox(height: Dimensions.fifTeen,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Remember ',style: textMedium.copyWith(color:Colors.black,fontSize: Dimensions.twenty )),
                    InkWell(
                        onTap: (){Get.to(ForgetPasswordscreen());},
                        child: Text("Forgot Password ?",style: textMedium.copyWith(color:Colors.red,fontSize: Dimensions.twenty ),)),
                  ],
                ),
              ),
              Center(child: InkWell( onTap: (){Get.to(SighUpScreen()); },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("You have no accounts?",style: textSemiBold.copyWith(fontSize: 18,color: Colors.black)),
                      Text("Sign up",style: textSemiBold.copyWith(fontSize: 14.sp,color: Colors.blue)),
                    ],
                  ))),
              const SizedBox(height: Dimensions.fifty,),
              InkWell(
                child: Container( height: 40.h, decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.defaultSize),  color:Colors.cyan,),
                  child:  Center(child: Text("Sign in",style: TextStyle(fontSize: 16.sp,color: Colors.white),),),),

                onTap: (){signInController.signin();},),

              const SizedBox(height: Dimensions.defaultSize,),
            ],),
        ),
      ),

    );
  }
}
