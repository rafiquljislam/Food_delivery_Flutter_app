import 'package:flutter/cupertino.dart';
import 'package:food_delivery_try/data/food.dart';
import 'package:food_delivery_try/data/restaurant.dart';

class Order with ChangeNotifier {
  final String id;
  final Restaurant restaurant;
  final Food food;
  final String date;
  final int quantity;

  Order({
    @required this.id,
    @required this.date,
    @required this.restaurant,
    @required this.food,
    @required this.quantity,
  });
}
