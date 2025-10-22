import 'package:comic_knight/models/comic_data_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:comic_knight/const.dart';


class LogicViewes {
  Future<void> add_views(ComicDataModel data) async {
    final supabase = Supabase.instance.client;
    final viewed = await supabase
        .from('most_viewed')
        .select()
        .eq('user_name', kUser!.email.toString())
        .eq('comic_id', data.id);
    if (viewed.isEmpty) {
      await supabase.from('most_viewed').insert({
        'user_name': kUser!.email.toString(),
        'comic_id': data.id,
      });
      await supabase
          .from('comic')
          .update({'viewed': data.viewed+1})
          .eq('id', data.id);
    }
  }
}
