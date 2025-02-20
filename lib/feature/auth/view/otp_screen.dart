import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:task_project/util/dimensions.dart';
import 'package:task_project/util/style.dart';
import 'package:task_project/widgets/custom_bottom.dart';

import 'reset_password_view.dart';

class OtpScreenView extends StatelessWidget {
  const OtpScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Verify OTP"),
    ),
      
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.fifTeen),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: Dimensions.eighty,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimensions.fifTeen),
              child: Image(image: AssetImage("assets/images/otp.png")),
            ),
          SizedBox(height: Dimensions.fifty,),
          Text("Enter OTP",style: textSemiBold.copyWith(fontSize: 18),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OtpTextField(fillColor: Colors.cyan,
              cursorColor: Colors.black,
              borderColor: Colors.black,
              disabledBorderColor: Colors.black,
              numberOfFields: 5,
              fieldWidth: Dimensions.fifty,

              //borderColor: Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),

                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
          ),
          SizedBox(height: Dimensions.thirty,),
          CustomBottom(bottomColor: Colors.cyan,name: "Submit",

          onTap: (){
            Get.to(ResetPasswordView());
          },
          ),
        ],),
      ),
    );
  }
}
