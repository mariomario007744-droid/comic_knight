import 'package:flutter/material.dart';
import 'package:comic_knight/const.dart';


class CustomOpenFileButton extends StatelessWidget {
  const CustomOpenFileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: Container(
        width: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kScandePrimaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text('فتح',style: TextStyle(fontSize: 18),)),
        ),
      ),
    );
  }
}
