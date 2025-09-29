import 'package:comic_knight/views/splash_view.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Comic_Knihgt());
}

class Comic_Knihgt extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}