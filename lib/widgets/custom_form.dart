import 'package:comic_knight/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final String hintName,hintPass,labelName,labelPass;

  const CustomForm({required this.hintName, required this.hintPass, required this.labelName, required this.labelPass});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          SizedBox(height: 40),
          CustomTextfeild(label:labelName, hint:hintName),
          SizedBox(height: 20),
          CustomTextfeild(label:labelPass, hint:hintPass),
        ],
      ),
    );
  }
}
