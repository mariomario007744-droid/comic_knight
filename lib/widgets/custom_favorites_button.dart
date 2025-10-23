import 'package:comic_knight/const.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class CustomFavoritesButton extends StatefulWidget {
  const CustomFavoritesButton({required this.id});
  final int id;

  @override
  State<CustomFavoritesButton> createState() => _CustomFavoritesButtonState();
}

class _CustomFavoritesButtonState extends State<CustomFavoritesButton> {
    final supabase = Supabase.instance.client;
    String  chick='null';
chickFavorite()async{
  final  response = await supabase
  .from('favorite')
  .select().eq('user', kUser!.email.toString()).eq('id_comic', widget.id).maybeSingle();
  if(response==null){
    chick='false';
  }else{
    chick='true';
  }
  if (mounted) {
  setState(() {
    
  });
}
}

  @override
  void initState() {
    super.initState();
    chickFavorite();
  }
  @override
  Widget build(BuildContext context) {
    return  chick=='null'?IconButton(icon: Icon(Icons.favorite_outline),onPressed: () {
      
    },): IconButton(onPressed: ()async{
      if (chick=='true') {
        chick='false';
  await supabase
    .from('favorite')
    .delete()
    .eq('id_comic', widget.id).eq('user', kUser!.email.toString());
    setState(() {
      
    });
}else if(chick=='false'){
  chick='true';
  await supabase
    .from('favorite')
    .insert({'id_comic': widget.id, 'user': kUser!.email.toString()});
    setState(() {
      
    });
}
    }, icon:chick=='false'? Icon(Icons.favorite_outline):Icon(Icons.favorite));
  }
}