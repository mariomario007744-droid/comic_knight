import 'package:comic_knight/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:comic_knight/const.dart';


class SignOut extends StatelessWidget {
  const SignOut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async {
        showDialog(context: context, builder: (context){
          return AlertDialog(content: Text('هل تريد تسجيل الخروج',),title: Text('تسجيل الخروج'),actions: [
            TextButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>LoginView()),(route)=>false);
            }, child: Text('نعم')),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('الغاء'))
          ],);
        },barrierDismissible: true);
      },
      child: Text('تسجيل خروج',style: TextStyle(fontSize: 24,color:kTextColor)));
  }
}
