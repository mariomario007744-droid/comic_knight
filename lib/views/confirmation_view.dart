import 'package:comic_knight/const.dart';
import 'package:comic_knight/logic/logic_signin_and_signup_supabase.dart';
import 'package:comic_knight/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ConfirmView extends StatelessWidget {
  ConfirmView({required this.email,required this.passowrd});
  final String email,passowrd;
  final supabase = Supabase.instance.client;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text("🚫حسابك لم يتم تأكيده بعد يرجي التحقق من  بريدك الإلكتروني",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              onTap: (){
                signInWithPassword(emailUser: email, passWordUser: passowrd);
                if(kUser?.emailConfirmedAt!=null){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return HomeView();
                  }));
                }
},
              child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kScandePrimaryColor
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                child: Text('تحقق مرة اخري'),
              ),
            ),),
          )
        ],
      ),
    );
  }
}
