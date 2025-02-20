import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_project/feature/auth/controller/forget_controller.dart';
import 'package:task_project/util/dimensions.dart';
import 'package:task_project/util/style.dart';
import 'package:task_project/widgets/cumstom_textfild.dart';

class ForgetPasswordscreen extends StatelessWidget {


final forgetPasswordContoller = Get.put(ForgetPasswordContoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Forgot Password",style: TextStyle(color: Colors.white),)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Email",style: textRegular.copyWith(fontSize: 14.sp),),
            CustomTextField(
              controller:forgetPasswordContoller.emailController ,
              hinText:"Enter your email" ,
            ),

            SizedBox(height: 40.h),

            InkWell(
              child: Container( height: 40.h, decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.defaultSize),  color:Colors.cyan,),
                child:  Center(child: Text("Reset Password",style: TextStyle(fontSize: 16.sp,color: Colors.white),),),),

              onTap: (){forgetPasswordContoller.resetPassword();},)
          ],
        ),
      ),
    );
  }
}
