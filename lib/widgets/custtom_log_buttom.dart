import 'package:comic_knight/const.dart';
import 'package:comic_knight/views/home_view.dart';
import 'package:flutter/material.dart';

class CusttomLogButtom extends StatelessWidget {
  const CusttomLogButtom({super.key, required this.textButtom, required this.onTap});
  final void Function()? onTap;
  final String textButtom;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          color: kScandePrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            textButtom,
            style: TextStyle(color: Colors.white, fontSize: 32),
          ),
        ),
      ),
    );
  }
}
