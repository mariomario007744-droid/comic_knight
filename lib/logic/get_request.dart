import 'package:comic_knight/models/comic_data_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class GetRequest {
  final supabase = Supabase.instance.client;

  fetchComics() async {
    final data = await supabase
        .from('comic')
        .select()
        .order('created_at', ascending: false)
        .limit(4);
        return  ComicDataModel.fromJson(data);
  }
}
