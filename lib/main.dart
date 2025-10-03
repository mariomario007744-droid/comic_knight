import 'package:comic_knight/const.dart';
import 'package:comic_knight/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: kUrlSupaBase,
    anonKey: kAnonKeySupaBase,
  );
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