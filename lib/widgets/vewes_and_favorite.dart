import 'package:comic_knight/logic/get_request.dart';
import 'package:comic_knight/models/comic_data_model.dart';
import 'package:comic_knight/widgets/custom_favorites_button.dart';
import 'package:flutter/material.dart';



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
        respon.add(ComicDataModel.fromJson(snapShot));
    if (mounted) {
  setState(() {
    
  });
}
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Icon(Icons.remove_red_eye),
        SizedBox(width: 10),
        Text(respon.isEmpty? widget.data.viewed.toString():respon[0].viewed.toString()),
        SizedBox(width: 20,),
        CustomFavoritesButton(id: widget.data.id,),
      ],
    );
  }
}




