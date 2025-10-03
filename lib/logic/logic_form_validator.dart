String? passowrdValidator(value) {
              if(value!.isNotEmpty){
                if(value.length<8){
                  return 'كلمة سر ضعيفة';
                }
              }else{
                return 'لا يوجد مدخلات';
              }
            }

              String? emailValidator(value) {
              if (value!.isNotEmpty) {
                if (value.contains("@")) {
                  if(value.endsWith('.com')){
                    return null;
                  }
                  else{
                    return 'يجب ان ينتهي الايميل ب .com';
                  }
                } else {
                  return 'لا يوجد رمز @';
                }
              } else {
                return 'لا يوجد مدخلات';
              }
            }