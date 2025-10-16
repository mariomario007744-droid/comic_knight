import 'package:comic_knight/const.dart';
import 'package:comic_knight/views/registor_view.dart';
import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:comic_knight/widgets/custom_form.dart';
import 'package:comic_knight/widgets/custom_google_buttom.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kScandePrimaryColor,
        title: Center(child: AppBarContant()),
      ),

      body: ListView(
        children: [
          SizedBox(height: 100),
          Center(child: Text("تسجيل الدخول", style: TextStyle(fontSize: 36))),
          CustomForm(textButtom: "تسجيل الدخول",stateAuth: "login",),
          SizedBox(height: 20),
          Divider(color: Colors.black,indent: 18,endIndent: 18,thickness: 2,),
          SizedBox(height: 20),
          CustomGoogleButtom(),
          SizedBox(height: 20),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistorView()),
              );
            },
            child: Center(
              child: Text(
                "انشاء حساب",
                style: TextStyle(fontSize: 24, color: Color(0xff1D94EB)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
