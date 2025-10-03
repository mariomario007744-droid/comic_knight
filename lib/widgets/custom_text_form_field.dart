import 'package:comic_knight/const.dart';
import 'package:flutter/material.dart';

class CustomTextFormfeild extends StatelessWidget {
  final String label;
  final String hint;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  const CustomTextFormfeild({required this.label, required this.hint,this.onSaved, this.validator});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        label: Text(label),
        hint: Text(hint),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(16)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(16)
        )
      ),
      onSaved: onSaved,
      validator: validator,
    );
  }
}