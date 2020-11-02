import 'package:flutter/material.dart';
import 'package:food_delivery_try/State/HeadState.dart';
import 'package:food_delivery_try/widgets/singleFoodItem.dart';
import 'package:food_delivery_try/widgets/stears.dart';
import 'package:provider/provider.dart';

class RestorentScreens extends StatelessWidget {
  static const routeName = '/restorent-screens';
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final st = Provider.of<HeadState>(context, listen: false);
    final restorent = st.restaurantGetById(id);
    final foods = st.getFoodByRestorentId(id);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: restorent.id,
                child: Image.asset(
                  restorent.imageUrl,
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 50,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      iconSize: 35,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      iconSize: 35,
                      icon: Icon(
                        Icons.favorite,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      restorent.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "2.0 miles away",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Stears(restorent.rating),
                Text(
                  restorent.address,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlatButton(
                        onPressed: () {},
                        padding:
                            EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                        child: Text(
                          "Reviews",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        padding:
                            EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              "Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                letterSpacing: 1.4,
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              itemCount: foods.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                value: foods[i],
                child: SingleFoodItem(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
