import 'package:comic_knight/const.dart';
import 'package:comic_knight/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(url: kUrlSupaBase, anonKey: kAnonKeySupaBase);
  Supabase.instance.client;
        if ( Supabase.instance.client.auth.currentUser!=null && Supabase.instance.client.auth.currentSession !=null) {
  kUser = Supabase.instance.client.auth.currentUser ;
  kSession = Supabase.instance.client.auth.currentSession;
  print('Mario$kUser');
}
  runApp(Comic_Knight());
}

class Comic_Knight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashView());
  }
}
