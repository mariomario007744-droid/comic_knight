import 'package:comic_knight/logic/logic_form_validator.dart';
import 'package:comic_knight/logic/logic_signin_and_signup_supabase.dart';
import 'package:comic_knight/views/home_view.dart';
import 'package:comic_knight/widgets/custom_text_form_field.dart';
import 'package:comic_knight/widgets/custtom_log_buttom.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({required this.textButtom, required this.stateAuth});
  final String textButtom;
  final String stateAuth;
  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? email, passWord;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  var exp;
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
              onTap: () async {
                await chechLogicLogButtom(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> chechLogicLogButtom(BuildContext context) async {
    
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      if (widget.stateAuth == "login") {
        exp = await signInWithPassword(
          emailUser: email!,
          passWordUser: passWord!,
        );
        if (exp == 'invalid_credentials') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('الايميل او كلمة المرور غير صحيحة'),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomeView();
              },
            ),
          );
        }
      } else if (widget.stateAuth == "signup") {
        exp = await signUp(
          emailUser: email!,
          passWordUser: passWord!,
        );
        if (exp != 'true') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('الايميل موجود بالفعل'),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomeView();
              },
            ),
          );
        }
      }
      ;
    } else {
      autovalidateMode = AutovalidateMode.always;
    }
  }
}
