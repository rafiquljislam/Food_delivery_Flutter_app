import 'package:flutter/material.dart';
import 'package:food_delivery_try/State/HeadState.dart';
import 'package:food_delivery_try/data/restaurant.dart';
import 'package:food_delivery_try/screens/restorentScreens.dart';
import 'package:food_delivery_try/widgets/stears.dart';
import 'package:provider/provider.dart';

class NearByRestaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restorent = Provider.of<HeadState>(context).restaurents;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Nearby Restaurants",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              letterSpacing: 1.8,
            ),
          ),
        ),
        Column(
          children: restorentList(context, restorent),
        )
      ],
    );
  }

  restorentList(context, List<Restaurant> restorents) {
    List<Widget> restList = [];
    restorents.forEach((value) {
      restList.add(
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              RestorentScreens.routeName,
              arguments: value.id,
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 0.8,
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(
                    tag: value.id,
                    child: Image.asset(
                      value.imageUrl,
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(value.id),
                        Text(
                          value.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Stears(value.rating),
                        SizedBox(height: 4),
                        Text(
                          value.address,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "2.0,miles away",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
    return restList;
  }
}
