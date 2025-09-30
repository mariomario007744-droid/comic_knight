import 'package:flutter/material.dart';

class LeadingDrawer extends StatelessWidget {
  const LeadingDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return IconButton(
          icon: Image.asset("assets/images/menu_icon.png"),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      },
    );
  }
}
