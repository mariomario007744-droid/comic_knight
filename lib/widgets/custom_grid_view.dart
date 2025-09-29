import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(physics: NeverScrollableScrollPhysics(),shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 8,),itemCount: 9, itemBuilder: (context,index){
      return Container(child: Image.asset("assets/images/1_2.png"),);
    });
  }
}