import 'package:comic_knight/const.dart';
import 'package:comic_knight/logic/get_request.dart';
import 'package:comic_knight/models/comic_data_model.dart';
import 'package:comic_knight/models/comic_favorite_model.dart';
import 'package:comic_knight/views/comic_view.dart';
import 'package:comic_knight/widgets/appbar_contant.dart';
import 'package:comic_knight/widgets/custom_grid_view.dart';
import 'package:comic_knight/widgets/vewes_and_favorite.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
    final supabase = Supabase.instance.client;
  final List<int> idComic=[];
  List<ComicDataModel> data=[];
  getDatd()async{
    final responIdComic = await supabase
  .from('favorite')
  .select().eq('user', kUser!.email.toString());
  for (var element in responIdComic) {
    idComic.add(element['id_comic']);
  };
  for (var element in idComic) {
    dynamic respon =await GetRequest().fetchComicsItem(element);
    data.add(ComicDataModel.fromJson(respon));
  }
  if (mounted) {
  setState(() {
    
  });
}
  }
  @override
  void initState() {
    super.initState();
    getDatd();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kScandePrimaryColor,
        title: AppBarContant(),
      ),

      body:data.isEmpty?Center(child: CircularProgressIndicator(),): ListView.builder(itemBuilder: (context,index){

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ComicView(data: data[index]);
              }));
            },
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kScandePrimaryColor
              ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(data[index].link_image),
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/1.8,
                        child: Text(data[index].name,style: TextStyle(fontSize: 16),overflow: TextOverflow.visible ,softWrap: true,maxLines: 2,)),
                    ),
                    ViewesAndFavorite(data: data[index])
                  ],),
                )
              ],),
            ),
          ),
        );
      },
      itemCount: data.length,
      ),
    );
  }
}