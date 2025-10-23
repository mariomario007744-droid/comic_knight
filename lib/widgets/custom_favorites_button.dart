import 'package:flutter/material.dart';

class CustomFavoritesButton extends StatelessWidget {
  const CustomFavoritesButton({required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline));
  }
}