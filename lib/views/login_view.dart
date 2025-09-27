import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7CA369),
        title:Center(child: AppBarContant()),
      ),
    );
  }
}


