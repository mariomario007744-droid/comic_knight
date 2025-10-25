import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:flutter/material.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(flex: 1),
        AppBarContant(),
        Spacer(flex: 1),
        GestureDetector(
          child: Image.asset("assets/images/search_icon.png"),
          onTap: () {},
        ),
      ],
    );
  }
}

