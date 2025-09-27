import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:comic_knight/widgets/custom_form.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7CA369),
        title: Center(child: AppBarContant()),
      ),

      body: Column(
        children: [
          SizedBox(height: 150),
          Center(child: Text("تسجيل الدخول", style: TextStyle(fontSize: 36))),
          CustomForm(
            hintName: "ادخل اسم المستخدم",
            labelName: "اسم المستخدم",
            hintPass: "ادخل كلمة المرور",
            labelPass: "كلمة المرور",
          ),
        ],
      ),
    );
  }
}
