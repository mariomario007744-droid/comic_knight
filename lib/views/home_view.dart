import 'package:comic_knight/const.dart';
import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: Row(
          children: [
            Image.asset("assets/images/menu_icon.png"),
            Spacer(flex: 1),
            AppBarContant(),
            Spacer(flex: 1),
            Image.asset("assets/images/search_icon.png"),
          ],
        ),
      ),
    );
  }
}
