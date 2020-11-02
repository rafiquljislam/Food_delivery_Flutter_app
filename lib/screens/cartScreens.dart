import 'package:flutter/material.dart';
import 'package:food_delivery_try/State/HeadState.dart';
import 'package:food_delivery_try/widgets/cartSingleItem.dart';
import 'package:provider/provider.dart';

class CartScreens extends StatelessWidget {
  static final routeName = '/cart-screens';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<HeadState>(context).orders;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart (${cart.length})"),
      ),
      body: ListView.separated(
        separatorBuilder: (ctx, i) {
          return Divider(height: 1.0, color: Colors.grey);
        },
        itemCount: cart.length + 1,
        itemBuilder: (ctx, i) {
          if (i < cart.length) {
            return ChangeNotifierProvider.value(
              value: cart[i],
              child: CartSingleItem(),
            );
          }
          return Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Extimated Delivery Time",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "25 min",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Cost",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "\$ 105.45",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
              ],
            ),
          );
        },
      ),
      bottomSheet: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, -1),
              blurRadius: 6.0,
            )
          ],
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "CHECKOUT",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
