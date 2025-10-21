import 'package:comic_knight/logic/get_request.dart';
import 'package:comic_knight/models/comic_data_model.dart';
import 'package:comic_knight/views/comic_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({super.key});

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
    final supabase = Supabase.instance.client;

List<ComicDataModel> data =[];
  getData() async {
    final dataSnapShot= await GetRequest().fetchComics();
    for (var element in dataSnapShot) {
      data.add(ComicDataModel.fromJson(element));
      
    }
    setState(() {
      
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return data.isEmpty? Center(child: CircularProgressIndicator()):
     GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 25,
      ),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ComicView(data: data[index],);
                },
              ),
            );
          },
          child: Image.network(data[index].link_image),
        );
      },
    );
  }
}
