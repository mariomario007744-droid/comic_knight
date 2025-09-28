
import 'package:comic_knight/const.dart';
import 'package:flutter/material.dart';

class CusttomLogButtom extends StatelessWidget {
  const CusttomLogButtom({
    super.key,
    required this.textButtom,
  });

  final String textButtom;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Center(child: Text(textButtom,style: TextStyle(color: Colors.white,fontSize: 32,),)),
    );
  }
}