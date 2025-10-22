import 'package:comic_knight/const.dart';
import 'package:comic_knight/logic/get_request.dart';
import 'package:comic_knight/models/comic_data_model.dart';
import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:comic_knight/widgets/custom_grid_view.dart';
import 'package:comic_knight/widgets/custom_open_file_button.dart';
import 'package:comic_knight/widgets/horizontal_list_view.dart';
import 'package:flutter/material.dart';

class ComicView extends StatelessWidget {
  ComicView({required this.data});
  final  ComicDataModel data;
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
                SizedBox(child: Image.network(data.link_image), width: 128),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data.name,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),

                      ViewesAndFavorite(data: data),
                    ],
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(data.description),
              ),
            ),
            SizedBox(height: 20),
            CustomOpenFileButton(data: data!),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: CustomGridView(),
              ),
            ),
            HorizontalListView(),
          ],
        ),
      ),
    );
  }
}

class ViewesAndFavorite extends StatefulWidget {
  const ViewesAndFavorite({
    super.key,
    required this.data,
  });

  final ComicDataModel data;
  
  @override
  State<ViewesAndFavorite> createState() => _ViewesAndFavoriteState();
}

class _ViewesAndFavoriteState extends State<ViewesAndFavorite> {
    List<ComicDataModel> respon=[];

  @override
  void initState() {
    super.initState();
    getComicItem();
  }

  getComicItem()async{
    final  snapShot =await GetRequest().fetchComicsItem(widget.data.id);
        respon.add(ComicDataModel.fromJson(snapShot[0]));
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Icon(Icons.remove_red_eye),
        SizedBox(width: 10),
        Text(respon.isEmpty? widget.data.viewed.toString():respon[0].viewed.toString()),
      ],
    );
  }
}
