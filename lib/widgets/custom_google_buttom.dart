
import 'package:flutter/material.dart';

class CustomGoogleButtom extends StatelessWidget {
  const CustomGoogleButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              spreadRadius: 4,
              blurRadius: 8,
              offset: Offset(5, 5)
            )
          ]
        ),
        height: 64,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/2993685_brand_brands_google_logo_logos_icon_1.png"),
        ),),
    );
  }
}