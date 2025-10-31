import 'package:comic_knight/logic/get_request.dart';
import 'package:comic_knight/widgets/custom_grid_view.dart';
import 'package:comic_knight/widgets/horizontal_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    print('Mario');
    return Padding(
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
            );
  }
}