import 'package:comic_knight/const.dart';
import 'package:comic_knight/views/login_view.dart';
import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      return Navigator.push(context, MaterialPageRoute(builder: (context){
        return LoginView();
      }));
    });
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/raphael_ai__11_removebg_preview_1.png'),
          SizedBox(height: 20,),
          AppBarContant()
        ],
      ),
    );
  }
}