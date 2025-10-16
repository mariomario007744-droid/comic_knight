import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final Color kPrimaryColor=Color(0xffA6DA8C);
final Color kScandePrimaryColor=Color(0xff7CA369);
final Color kTextColor = Colors.white;
final  String kAppIcon ='assets/images/raphael_ai__11_removebg_preview_1.png';
final String kUrlSupaBase="https://dfsrzxmvygdzzgfnbhby.supabase.co";
final String kAnonKeySupaBase="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRmc3J6eG12eWdkenpnZm5iaGJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTk0NjEzOTQsImV4cCI6MjA3NTAzNzM5NH0.Sa5q3CAfhjB-oBwhYkauEIF10KZjzxtm8mlzGwltL90";
User? kUser;
Session? kSession;
