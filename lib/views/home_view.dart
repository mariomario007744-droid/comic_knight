import 'package:comic_knight/const.dart';
import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:comic_knight/widgets/custom_grid_view.dart';
import 'package:comic_knight/widgets/horizontal_list_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kScandePrimaryColor,
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

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              Text('الاكثر مشاهدة', style: TextStyle(fontSize: 28)),
              SizedBox(height: 200, child: HorizontalListView()),
              Text('المضاف حديثا', style: TextStyle(fontSize: 28)),
              SizedBox(height: 200, child: HorizontalListView()),
              CustomGridView(),
            ],
          ),
        ),
      ),
    );
  }
}


