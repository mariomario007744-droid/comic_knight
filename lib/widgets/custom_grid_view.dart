import 'package:comic_knight/const.dart';
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

  List<ComicDataModel> data = [];
  getData() async {
    final dataSnapShot = await GetRequest().fetchComics();
    for (var element in dataSnapShot) {
      data.add(ComicDataModel.fromJson(element));
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return data.isEmpty
        ? Center(child: CircularProgressIndicator())
        : GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.8,
              crossAxisCount: 2,
              mainAxisSpacing: 20,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ComicView(data: data[index]);
                      },
                    ),
                  );
                },
                child: Card(
                  color: kScandePrimaryColor,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          data[index].link_image,
                          height: MediaQuery.of(context).size.width / 2.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: SizedBox(
                          height: 20,
                          child: Text(data[index].name,overflow: TextOverflow.visible,),
                          ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
  }
}
