import 'package:comic_knight/const.dart';
import 'package:comic_knight/views/search_view.dart';
import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:comic_knight/widgets/custom_drawer_list.dart';
import 'package:comic_knight/widgets/home_view_body.dart';
import 'package:comic_knight/widgets/leading_drawer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
            GestureDetector(
              child: Image.asset("assets/images/search_icon.png"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchView();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      drawer: CustomDrawerList(),

      body: HomeViewBody(),
    );
  }
}
