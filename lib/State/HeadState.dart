import 'package:flutter/cupertino.dart';
import 'package:food_delivery_try/data/food.dart';
import 'package:food_delivery_try/data/order.dart';
import 'package:food_delivery_try/data/restaurant.dart';

class HeadState with ChangeNotifier {
  List<Food> _foods = [
    Food(
      id: 'food_1',
      restaurantId: [
        "restaurant_1",
        "restaurant_2",
        "restaurant_3",
        "restaurant_4",
        "restaurant_5",
      ],
      imageUrl: 'assets/images/burrito.jpg',
      name: 'Burrito',
      price: 8.99,
    ),
    Food(
      id: 'food_2',
      restaurantId: [
        "restaurant_1",
        "restaurant_2",
        "restaurant_3",
        "restaurant_4",
        "restaurant_5",
      ],
      imageUrl: 'assets/images/steak.jpg',
      name: 'Steak',
      price: 17.99,
    ),
    Food(
      id: 'food_3',
      restaurantId: [
        "restaurant_1",
        "restaurant_2",
        "restaurant_3",
        "restaurant_4",
        "restaurant_5",
      ],
      imageUrl: 'assets/images/pasta.jpg',
      name: 'Pasta',
      price: 14.99,
    ),
    Food(
      id: 'food_4',
      restaurantId: [
        "restaurant_1",
        "restaurant_2",
        "restaurant_3",
        "restaurant_4",
        "restaurant_5",
      ],
      imageUrl: 'assets/images/ramen.jpg',
      name: 'Ramen',
      price: 13.99,
    ),
    Food(
      id: 'food_5',
      restaurantId: [
        "restaurant_1",
        "restaurant_2",
        "restaurant_3",
        "restaurant_4",
        "restaurant_5",
      ],
      imageUrl: 'assets/images/pancakes.jpg',
      name: 'Pancakes',
      price: 9.99,
    ),
    Food(
      id: 'food_6',
      restaurantId: [
        "restaurant_1",
        "restaurant_2",
        "restaurant_3",
        "restaurant_4",
        "restaurant_5",
      ],
      imageUrl: 'assets/images/burger.jpg',
      name: 'Burger',
      price: 14.99,
    ),
    Food(
      id: 'food_7',
      restaurantId: [
        "restaurant_1",
        "restaurant_2",
        "restaurant_3",
        "restaurant_4",
        "restaurant_5",
      ],
      imageUrl: 'assets/images/pizza.jpg',
      name: 'Pizza',
      price: 11.99,
    ),
    Food(
      id: 'food_8',
      restaurantId: [
        "restaurant_1",
        "restaurant_2",
        "restaurant_3",
        "restaurant_4",
        "restaurant_5",
      ],
      imageUrl: 'assets/images/salmon.jpg',
      name: 'Salmon Salad',
      price: 12.99,
    ),
  ];

  List<Restaurant> _restaurants = [
    Restaurant(
      id: "restaurant_1",
      imageUrl: 'assets/images/restaurant0.jpg',
      name: 'Restaurant 0',
      address: '200 Main St, New York, NY',
      rating: 5,
    ),
    Restaurant(
      id: "restaurant_2",
      imageUrl: 'assets/images/restaurant1.jpg',
      name: 'Restaurant 1',
      address: '200 Main St, New York, NY',
      rating: 4,
    ),
    Restaurant(
      id: "restaurant_3",
      imageUrl: 'assets/images/restaurant2.jpg',
      name: 'Restaurant 2',
      address: '200 Main St, New York, NY',
      rating: 4,
    ),
    Restaurant(
      id: "restaurant_4",
      imageUrl: 'assets/images/restaurant3.jpg',
      name: 'Restaurant 3',
      address: '200 Main St, New York, NY',
      rating: 2,
    ),
    Restaurant(
      id: "restaurant_5",
      imageUrl: 'assets/images/restaurant4.jpg',
      name: 'Restaurant 4',
      address: '200 Main St, New York, NY',
      rating: 3,
    ),
  ];

  List<Order> _orders = [
    Order(
      id: "order_1",
      date: 'Nov 10, 2019',
      food: Food(
        id: 'food_1',
        restaurantId: [
          "restaurant_1",
          "restaurant_2",
          "restaurant_3",
          "restaurant_4",
          "restaurant_5",
        ],
        imageUrl: 'assets/images/burrito.jpg',
        name: 'Burrito',
        price: 8.99,
      ),
      restaurant: Restaurant(
        id: "restaurant_1",
        imageUrl: 'assets/images/restaurant0.jpg',
        name: 'Restaurant 0',
        address: '200 Main St, New York, NY',
        rating: 5,
      ),
      quantity: 1,
    ),
    Order(
      id: "order_2",
      date: 'Nov 8, 2019',
      food: Food(
        id: 'food_2',
        restaurantId: [
          "restaurant_1",
          "restaurant_2",
          "restaurant_3",
          "restaurant_4",
          "restaurant_5",
        ],
        imageUrl: 'assets/images/steak.jpg',
        name: 'Steak',
        price: 17.99,
      ),
      restaurant: Restaurant(
        id: "restaurant_2",
        imageUrl: 'assets/images/restaurant1.jpg',
        name: 'Restaurant 1',
        address: '200 Main St, New York, NY',
        rating: 4,
      ),
      quantity: 3,
    ),
    Order(
      id: "order_3",
      date: 'Nov 5, 2019',
      food: Food(
        id: 'food_3',
        restaurantId: [
          "restaurant_1",
          "restaurant_2",
          "restaurant_3",
          "restaurant_4",
          "restaurant_5",
        ],
        imageUrl: 'assets/images/pasta.jpg',
        name: 'Pasta',
        price: 14.99,
      ),
      restaurant: Restaurant(
        id: "restaurant_3",
        imageUrl: 'assets/images/restaurant2.jpg',
        name: 'Restaurant 2',
        address: '200 Main St, New York, NY',
        rating: 4,
      ),
      quantity: 2,
    ),
    Order(
      id: "order_4",
      date: 'Nov 2, 2019',
      food: Food(
        id: 'food_4',
        restaurantId: [
          "restaurant_1",
          "restaurant_2",
          "restaurant_3",
          "restaurant_4",
          "restaurant_5",
        ],
        imageUrl: 'assets/images/ramen.jpg',
        name: 'Ramen',
        price: 13.99,
      ),
      restaurant: Restaurant(
        id: "restaurant_4",
        imageUrl: 'assets/images/restaurant3.jpg',
        name: 'Restaurant 3',
        address: '200 Main St, New York, NY',
        rating: 2,
      ),
      quantity: 1,
    ),
    Order(
      id: "order_5",
      date: 'Nov 1, 2019',
      food: Food(
        id: 'food_5',
        restaurantId: [
          "restaurant_1",
          "restaurant_2",
          "restaurant_3",
          "restaurant_4",
          "restaurant_5",
        ],
        imageUrl: 'assets/images/pancakes.jpg',
        name: 'Pancakes',
        price: 9.99,
      ),
      restaurant: Restaurant(
        id: "restaurant_5",
        imageUrl: 'assets/images/restaurant4.jpg',
        name: 'Restaurant 4',
        address: '200 Main St, New York, NY',
        rating: 3,
      ),
      quantity: 1,
    ),
    Order(
      id: "order_6",
      date: 'Nov 11, 2019',
      food: Food(
        id: 'food_6',
        restaurantId: [
          "restaurant_1",
          "restaurant_2",
          "restaurant_3",
          "restaurant_4",
          "restaurant_5",
        ],
        imageUrl: 'assets/images/burger.jpg',
        name: 'Burger',
        price: 14.99,
      ),
      restaurant: Restaurant(
        id: "restaurant_1",
        imageUrl: 'assets/images/restaurant0.jpg',
        name: 'Restaurant 0',
        address: '200 Main St, New York, NY',
        rating: 5,
      ),
      quantity: 2,
    ),
    Order(
      id: "order_7",
      date: 'Nov 11, 2019',
      food: Food(
        id: 'food_6',
        restaurantId: [
          "restaurant_1",
          "restaurant_2",
          "restaurant_3",
          "restaurant_4",
          "restaurant_5",
        ],
        imageUrl: 'assets/images/burger.jpg',
        name: 'Burger',
        price: 14.99,
      ),
      restaurant: Restaurant(
        id: "restaurant_1",
        imageUrl: 'assets/images/restaurant0.jpg',
        name: 'Restaurant 0',
        address: '200 Main St, New York, NY',
        rating: 5,
      ),
      quantity: 1,
    ),
    Order(
      id: "order_8",
      date: 'Nov 11, 2019',
      food: Food(
        id: 'food_7',
        restaurantId: [
          "restaurant_1",
          "restaurant_2",
          "restaurant_3",
          "restaurant_4",
          "restaurant_5",
        ],
        imageUrl: 'assets/images/pizza.jpg',
        name: 'Pizza',
        price: 11.99,
      ),
      restaurant: Restaurant(
        id: "restaurant_1",
        imageUrl: 'assets/images/restaurant0.jpg',
        name: 'Restaurant 0',
        address: '200 Main St, New York, NY',
        rating: 5,
      ),
      quantity: 1,
    ),
    Order(
      id: "order_9",
      date: 'Nov 11, 2019',
      food: Food(
        id: 'food_8',
        restaurantId: [
          "restaurant_1",
          "restaurant_2",
          "restaurant_3",
          "restaurant_4",
          "restaurant_5",
        ],
        imageUrl: 'assets/images/salmon.jpg',
        name: 'Salmon Salad',
        price: 12.99,
      ),
      restaurant: Restaurant(
        id: "restaurant_1",
        imageUrl: 'assets/images/restaurant0.jpg',
        name: 'Restaurant 0',
        address: '200 Main St, New York, NY',
        rating: 5,
      ),
      quantity: 3,
    ),
    Order(
      id: "order_10",
      date: 'Nov 11, 2019',
      food: Food(
        id: 'food_6',
        restaurantId: [
          "restaurant_1",
          "restaurant_2",
          "restaurant_3",
          "restaurant_4",
          "restaurant_5",
        ],
        imageUrl: 'assets/images/burger.jpg',
        name: 'Burger',
        price: 14.99,
      ),
      restaurant: Restaurant(
        id: "restaurant_1",
        imageUrl: 'assets/images/restaurant0.jpg',
        name: 'Restaurant 0',
        address: '200 Main St, New York, NY',
        rating: 5,
      ),
      quantity: 2,
    ),
  ];

  List<Restaurant> get restaurents {
    return [..._restaurants];
  }

  List<Order> get orders {
    return [..._orders];
  }

  List<Food> getFoodByRestorentId(String restrontId) {
    return _foods
        .where((element) => element.restaurantId.contains(restrontId))
        .toList();
  }

  Restaurant restaurantGetById(String id) {
    return _restaurants.firstWhere((element) => element.id == id);
  }

  Food getFoodById(String id) {
    return _foods.firstWhere((element) => element.id == id);
  }
}
