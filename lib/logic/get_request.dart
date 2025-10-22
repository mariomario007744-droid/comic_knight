import 'package:supabase_flutter/supabase_flutter.dart';

class GetRequest {
  final supabase = Supabase.instance.client;

  fetchComics() async {
    final data = await supabase
        .from('comic')
        .select()
        .order('created_at', ascending: false)
        .limit(50);
        return  data;
  }

    fetchComicsItem(int id) async {
    final data = await supabase
        .from('comic')
        .select()
        .eq('id', id);
        return  data;
  }
}
