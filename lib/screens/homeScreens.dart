import 'package:flutter/material.dart';
import 'package:food_delivery_try/State/HeadState.dart';
import 'package:food_delivery_try/screens/cartScreens.dart';
import 'package:food_delivery_try/widgets/nearByRestaurants.dart';
import 'package:food_delivery_try/widgets/recentOrders.dart';
import 'package:provider/provider.dart';

class HomeScreens extends StatelessWidget {
  static const routeName = '/home-screens';
  @override
  Widget build(BuildContext context) {
    final order = Provider.of<HeadState>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.account_circle,
            size: 30,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text("Food App"),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed(CartScreens.routeName);
            },
            child: Text(
              "Cart (${order.orders.length})",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(width: 0.8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 0.8,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                hintText: "Search Food or Restaurants",
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          RecentOrders(),
          NearByRestaurants(),
        ],
      ),
    );
  }
}
