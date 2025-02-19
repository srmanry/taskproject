import 'package:flutter/material.dart';
import 'package:task_project/util/dimensions.dart';
import 'package:task_project/widgets/cumstom_textfild.dart';
import 'package:task_project/widgets/custom_bottom.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reset Password"),),
      body: Column(children: [
        CustomTextField(hinText: "New password",),

        CustomTextField(hinText: "Confirm password",),

        SizedBox(height: Dimensions.defaultSize,),
        CustomBottom(name: "Submit"),
      ],),
    );
  }
}
