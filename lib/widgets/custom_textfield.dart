import 'package:comic_knight/const.dart';
import 'package:flutter/material.dart';

class CustomTextfeild extends StatelessWidget {
  final String label;
  final String hint;

  const CustomTextfeild({required this.label, required this.hint});

  @override
  Widget build(BuildContext context) {
    return  TextField(
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
    );
  }
}