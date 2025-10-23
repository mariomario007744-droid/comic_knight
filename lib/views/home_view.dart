import 'package:comic_knight/const.dart';
import 'package:comic_knight/logic/get_request.dart';
import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:comic_knight/widgets/custom_drawer_list.dart';
import 'package:comic_knight/widgets/custom_grid_view.dart';
import 'package:comic_knight/widgets/horizontal_list_view.dart';
import 'package:comic_knight/widgets/leading_drawer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final supabase = Supabase.instance.client;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: kScandePrimaryColor,
        leading: LeadingDrawer(),
        title: Row(
          children: [
            Spacer(flex: 1),
            AppBarContant(),
            Spacer(flex: 1),
            Image.asset("assets/images/search_icon.png"),
          ],
        ),
      ),
      drawer: CustomDrawerList(),

      body:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ListView(
                  children: [
                    Text('الاكثر مشاهدة', style: TextStyle(fontSize: 28)),
                    HorizontalListView(respon: GetRequest().fetchViews(),),
                    Text('المضاف حديثا', style: TextStyle(fontSize: 28)),
                    CustomGridView(
                      respon: GetRequest().fetchComics(),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
