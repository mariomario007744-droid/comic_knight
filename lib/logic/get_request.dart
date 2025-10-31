import 'package:supabase_flutter/supabase_flutter.dart';

class GetRequest {
  final supabase = Supabase.instance.client;

  fetchComics() async {
    final data = await supabase
        .from('comic')
        .select()
        .order('created_at', ascending: false)
        .limit(50);
    return data;
  }

  fetchComicsItem(int id) async {
    final data = await supabase
        .from('comic')
        .select()
        .eq('id', id)
        .maybeSingle();
    return data;
  }

  fetchParts(String name_folder_data) async {
    final supabase = Supabase.instance.client;
    final comicParts = await supabase
        .from('comic')
        .select()
        .eq('name_folder_data', name_folder_data);
    return comicParts;
  }

  fetchViews() async {
    final supabase = Supabase.instance.client;
    final comicParts = await supabase
        .from('comic')
        .select()
        .order('viewed', ascending: false)
        .limit(10);
    return comicParts;
  }

  PostgrestTransformBuilder<PostgrestList> fetchiLinkComic(String value) {
    return supabase.from('comic').select().ilike('name', '%$value%').limit(10);
  }
}
