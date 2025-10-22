import 'package:comic_knight/logic/logic_viewes.dart';
import 'package:comic_knight/models/comic_data_model.dart';
import 'package:comic_knight/views/pdf_view.dart';
import 'package:flutter/material.dart';
import 'package:comic_knight/const.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomOpenFileButton extends StatelessWidget {
  CustomOpenFileButton({required this.data});
  final ComicDataModel data;
  final supabase = Supabase.instance.client;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: GestureDetector(
        onTap: () async {
          await LogicViewes().add_views(data);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ComicPdfView(pdfUrl: data.link_pdf);
              },
            ),
          );
        },
        child: Container(
          width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: kScandePrimaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('فتح', style: TextStyle(fontSize: 18))),
          ),
        ),
      ),
    );
  }


}
