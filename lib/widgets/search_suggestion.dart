import 'package:comic_knight/const.dart';
import 'package:comic_knight/models/comic_data_model.dart';
import 'package:comic_knight/views/comic_view.dart';
import 'package:flutter/material.dart';



class SearchSuggestions extends StatelessWidget {
  const SearchSuggestions({
    super.key,
    required this.data,
  });

  final List? data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: ListView.builder(
          itemCount: data!.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 16,
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ComicView(data: ComicDataModel.fromJson(data![index]));
                    }));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: kScandePrimaryColor.withValues(
                        alpha: 0.5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(data![index]['name']),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
  }
}