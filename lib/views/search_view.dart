import 'package:comic_knight/const.dart';
import 'package:comic_knight/logic/get_request.dart';
import 'package:comic_knight/models/comic_data_model.dart';
import 'package:comic_knight/views/custom_card.dart';
import 'package:comic_knight/widgets/search_suggestion.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final supabase = Supabase.instance.client;
  final FocusNode focus = FocusNode();
  List<dynamic>? data;
  bool isSearched = false;
  @override
  void initState() {
    super.initState();
    focus.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kPrimaryColor,

      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: 110,
              color: kScandePrimaryColor,
              child: Column(
                children: [
                  SizedBox(height: 28),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      onSubmitted: (value) {
                        isSearched = true;
                      },
                      onChanged: (value) async {
                        isSearched = false;
                        data = await GetRequest().fetchiLinkComic(value);
                        setState(() {});
                      },
                      style: TextStyle(color: kTextColor, fontSize: 18),
                      cursorColor: kPrimaryColor,
                      focusNode: focus,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 8),
                        suffix: Icon(Icons.search),
                        hintText: '...اكتب هنا',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kTextColor),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            data == null
                ? Container()
                : isSearched
                ? Expanded(
                    flex: 1,
                    child: GridView.builder(
                      itemCount: data!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.8,
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) {
                        return CustomCard(
                          comics: ComicDataModel.fromJson(data![index]),
                        );
                      },
                    ),
                  )
                : SearchSuggestions(data: data),
          ],
        ),
      ),
    );
  }
}
