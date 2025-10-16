  import 'package:comic_knight/const.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

signInWithPassword({required String emailUser,required String passWordUser})async{
  try{
      final res= await supabase.auth.signInWithPassword(
  email: emailUser,
  password: passWordUser,
);
kSession = res.session;
kUser = res.user;
  } on AuthApiException catch(e){
    return  e.code.toString();
    
  }
  catch(e){
    return e.toString();
  }
}


signUp({required String emailUser,required String passWordUser})async{
      try {
  final res= await supabase.auth.signUp(
    email: emailUser,
    password: passWordUser,
  );
  kSession = res.session;
  kUser = res.user;
  print('true');
    return 'true';
} on Exception catch (e) {
  print('wait ${e.toString()}');
  return e.toString();
}
}

