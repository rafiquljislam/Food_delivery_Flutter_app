import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_delivery_try/State/HeadState.dart';
import 'package:food_delivery_try/widgets/singleOrder.dart';
import 'package:provider/provider.dart';

class RecentOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final order = Provider.of<HeadState>(context, listen: false).orders;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Recent Orders",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              letterSpacing: 1.8,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 120,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: order.length,
            itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: order[i],
              child: SingleOrder(),
            ),
          ),
        ),
      ],
    );
  }
}
