import 'package:flutter/cupertino.dart';

class Food with ChangeNotifier {
  final String id;
  final String imageUrl;
  final String name;
  final double price;
  final List<String> restaurantId;

  Food({
    @required this.id,
    @required this.restaurantId,
    @required this.imageUrl,
    @required this.name,
    @required this.price,
  });
}
