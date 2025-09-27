import 'package:comic_knight/views/login_view.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Comic_Knihgt());
}

class Comic_Knihgt extends StatelessWidget {
  const Comic_Knihgt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView(),
    );
  }
}