import 'package:comic_knight/views/home_view.dart';
import 'package:comic_knight/widgets/custom_textfield.dart';
import 'package:comic_knight/widgets/custtom_log_buttom.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final String textButtom;

  const CustomForm({required this.textButtom});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomTextfeild(label: "اسم المستخدم", hint: "ادخل اسم المستخدم"),
          SizedBox(height: 20),
          CustomTextfeild(label: "كلمة المرور", hint: "ادخل كلمة المرور"),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return HomeView();
              }));
            },
            child: CusttomLogButtom(textButtom: textButtom))
        ],
      ),
    );
  }
}

