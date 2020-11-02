import 'package:flutter/material.dart';

class Stears extends StatelessWidget {
  final int rating;
  Stears(this.rating);
  @override
  Widget build(BuildContext context) {
    String star = '';
    for (int i = 0; i < rating; i++) {
      star += "⭐  ";
    }
    return Text(
      star,
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
