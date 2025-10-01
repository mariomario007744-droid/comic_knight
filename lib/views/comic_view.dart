import 'package:comic_knight/const.dart';
import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:comic_knight/widgets/custom_grid_view.dart';
import 'package:comic_knight/widgets/horizontal_list_view.dart';
import 'package:flutter/material.dart';

class ComicView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kScandePrimaryColor,
        title: AppBarContant(),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(height: 16),
            Row(
              children: [
                Image.asset('assets/images/1_2.png'),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Bat Man Arkam Knight',
                    style: TextStyle(fontSize: 18),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: kScandePrimaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "cvbcbxbxcbfdbfdbxdbfbbcvvdivlvunszzdivduvdvvdnvzvdvndnvsvndsvnsvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvcbcvb",
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: kScandePrimaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: CustomGridView(),
              ),
            ),
            HorizontalListView()
          ],
        ),
      ),
    );
  }
}
