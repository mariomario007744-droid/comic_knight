import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:comic_knight/widgets/custom_form.dart';
import 'package:comic_knight/widgets/custom_google_buttom.dart';
import 'package:flutter/material.dart';

class RegistorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7CA369),
        title: Center(child: AppBarContant()),
      ),

      body: ListView(
        children: [
          SizedBox(height: 150),
          Center(child: Text("انشاء حساب", style: TextStyle(fontSize: 36))),
          CustomForm(),
          SizedBox(height: 40),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Center(
              child: Text(
                "تسجيل الدخول",
                style: TextStyle(fontSize: 24, color: Color(0xff1D94EB)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          CustomGoogleButtom()
        ],
      ),
    );
  }
}
