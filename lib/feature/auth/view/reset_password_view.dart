import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_project/feature/home/view/home_screen.dart';
import 'package:task_project/util/dimensions.dart';
import 'package:task_project/widgets/cumstom_textfild.dart';
import 'package:task_project/widgets/custom_bottom.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reset Password"),),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.fifTeen),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimensions.thirty),
              child: Image.asset("assets/images/otp.png",height: Dimensions.hundred.h,),
            ),
          SizedBox(height: Dimensions.fifty.h,),
          CustomTextField(hinText: "New password",),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
            child: CustomTextField(hinText: "Confirm password",),
          ),

          SizedBox(height: Dimensions.forty,),

          InkWell(
            child: Container( height: 40.h, decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.defaultSize),  color:Colors.cyan,),
              child:  Center(child: Text("Confirme Password",style: TextStyle(fontSize: 16.sp,color: Colors.white),),),),

            onTap: (){Get.to(HomeScreenView());},)
        ],),
      ),
    );
  }
}
