import 'package:flutter/material.dart';

class CustomDrawerList extends StatelessWidget {
  const CustomDrawerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kScandePrimaryColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 80, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Container(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:Image.asset(
                    kAppIcon,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(width: 2,color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text('الفئات',style: TextStyle(fontSize: 24,color:kTextColor),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text('المفضلة',style: TextStyle(fontSize: 24,color:kTextColor)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text('تسجيل خروج',style: TextStyle(fontSize: 24,color:kTextColor)),
            ),
          ],
        ),
      ),
    );
  }
}
