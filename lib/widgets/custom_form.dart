import 'package:comic_knight/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
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
        ],
      ),
    );
  }
}
