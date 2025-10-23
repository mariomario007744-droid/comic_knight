import 'package:comic_knight/models/comic_data_model.dart';
import 'package:comic_knight/views/custom_card.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({required this.respon});
  final  respon;

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
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
    return  comics.isEmpty?Center(child: CircularProgressIndicator()): GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.8,
              crossAxisCount: 2,
              mainAxisSpacing: 20,
            ),
            itemCount: comics.length,
            itemBuilder: (context, index) {
              return CustomCard(comics: comics[index]);
            },
          );
  }
}

