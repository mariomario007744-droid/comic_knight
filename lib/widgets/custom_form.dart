import 'package:comic_knight/logic/logic_form_validator.dart';
import 'package:comic_knight/views/home_view.dart';
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
  final GlobalKey<FormState> formKey = GlobalKey();
  String? email, passWord;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            SizedBox(height: 40),
            CustomTextFormfeild(
              label: "الايميل",
              hint: "ادخل الايميل",
              validator: emailValidator,
              onSaved: (value) {
                email = value;
              },
            ),
            SizedBox(height: 20),
            CustomTextFormfeild(
              label: "كلمة المرور",
              hint: "ادخل كلمة المرور",
              onSaved: (value) {
                passWord = value;
              },
              validator: passowrdValidator,
            ),
            SizedBox(height: 20),
            CusttomLogButtom(
              textButtom: widget.textButtom,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeView();
                      },
                    ),
                  );
                }else{
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  


}
