import 'package:flutter/cupertino.dart';

class Restaurant {
  final String id;
  final String imageUrl;
  final String name;
  final String address;
  final int rating;
  final bool favorit;

  Restaurant({
    @required this.id,
    @required this.imageUrl,
    @required this.name,
    @required this.address,
    @required this.rating,
    this.favorit = false,
  });
}
