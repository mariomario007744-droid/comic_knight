import 'package:comic_knight/models/comic_data_model.dart';
import 'package:comic_knight/views/custom_card.dart';
import 'package:flutter/material.dart';

class HorizontalListView extends StatefulWidget {
  const HorizontalListView({required this.respon});
  final  respon;

  @override
  State<HorizontalListView> createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  List<ComicDataModel> comics=[];
  getComicsData()async{
    final data= await  widget.respon;
    for (var element in data) {
      comics.add(ComicDataModel.fromJson(element));
    }
    if (mounted) {
  setState(() {
    
  });
}
  }

  @override
  void initState() {
    super.initState();
    getComicsData();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(

        scrollDirection: Axis.horizontal,
        itemCount: comics.length,
        itemBuilder: (context, index) {
          return comics.isEmpty?Center(child: CircularProgressIndicator(),)
          :SizedBox(
            width: 150,
            child: CustomCard(comics: comics[index]));
        },
        ),
    );
  }
}