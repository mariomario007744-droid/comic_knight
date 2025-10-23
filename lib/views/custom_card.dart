import 'package:comic_knight/const.dart';
import 'package:comic_knight/models/comic_data_model.dart';
import 'package:comic_knight/views/comic_view.dart';
import 'package:flutter/material.dart';



class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.comics,
  });

  final ComicDataModel comics;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ComicView(data: comics);
                      },
                    ),
                  );
                },
                child: 
    Card(
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
              comics.link_image,
              height: MediaQuery.of(context).size.width / 2.5,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height: 20,
              child: Text(comics.name,overflow: TextOverflow.visible,maxLines: 2,),
              ),
          ),
        ],
      ),
    ));
  }
}
