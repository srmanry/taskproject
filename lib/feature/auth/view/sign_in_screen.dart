
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/feature/auth/controller/%E2%80%8Dsignin_controller.dart';
import 'package:task_project/feature/auth/view/sigh_up_screen.dart';
import 'package:task_project/feature/home/view/home_screen.dart';
import 'package:task_project/util/dimensions.dart';
import 'package:task_project/util/style.dart';
import 'package:task_project/widgets/cumstom_textfild.dart';

import 'forget_password.dart';

class SignInScreenView extends StatefulWidget {
  const SignInScreenView({super.key});

  @override
  State<SignInScreenView> createState() => _SignInScreenViewState();
}

class _SignInScreenViewState extends State<SignInScreenView> {

  AuthController authController = Get.put(AuthController());
  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar( backgroundColor: const Color(0xFFB71C1C), centerTitle: true,
        title: const Text("Sign In",style: TextStyle(color: Colors.white),),
        foregroundColor: Colors.white,),

      body: Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 110,),
              const Padding( padding: EdgeInsets.all(8.0),child: Text("Email",style: textSemiBold,), ),
              CustomTextField(controller: authController.emailController,
                focusColor: Colors.black,hinText: "Email ",),
              SizedBox(height: Dimensions.fifTeen,),
              const Padding( padding: EdgeInsets.all(8.0),child: Text("Password",style: textSemiBold,), ),
              CustomTextField(controller: authController.passwordController, focusColor: Colors.black,hinText: "password",
                obscureText: true, suffixIcon: Icon(Icons.visibility),),
              SizedBox(height: Dimensions.fifTeen,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Remember ',style: textMedium.copyWith(color:Colors.black,fontSize: Dimensions.twenty )),
                    InkWell(
                        onTap: (){Get.to(ForgetPasswordScreenView());},
                        child: Text("Forgot Password ?",style: textMedium.copyWith(color:Colors.red,fontSize: Dimensions.twenty ),)),
                  ],
                ),
              ),
              Center(child: InkWell(
                   onTap: (){Get.to(SighUpScreen());
              },
                  child: Text("Create a account",style: textMedium.copyWith(fontSize: 18)))),
              const SizedBox(height: Dimensions.fifty,),
              InkWell(
                child: Container( height: 45, decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.defaultSize),  color: const Color(0xFFB71C1C),),
                  child: const Center(child: Text("Sign in",style: TextStyle(fontSize: 24,color: Colors.white),),),),

                onTap: (){
                  Get.to(HomeScreenView());
                },),

              const SizedBox(height: Dimensions.defaultSize,),
            ],),
        ),
      ),

    );
  }
}
