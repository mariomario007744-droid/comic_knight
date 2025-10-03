import 'package:comic_knight/widgets/custom_text_form_field.dart';
import 'package:comic_knight/widgets/custtom_log_buttom.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({required this.textButtom});
  final String textButtom;
  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final GlobalKey formKey = GlobalKey();
  String? email,passWord;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(height: 40),
            CustomTextFormfeild(
              label: "الايميل",
              hint: "ادخل الايميل",
              onSaved: (value) {
                email=value;
              },
            ),
            SizedBox(height: 20),
            CustomTextFormfeild(
              label: "كلمة المرور",
              hint: "ادخل كلمة المرور",
              onSaved: (value) {
                passWord=value;
              },
            ),
            SizedBox(height: 20),
            CusttomLogButtom(textButtom: widget.textButtom),
          ],
        ),
      ),
    );
  }
}
