import 'package:flutter/material.dart';
import 'package:food_delivery_try/State/HeadState.dart';
import 'package:food_delivery_try/screens/cartScreens.dart';
import 'package:food_delivery_try/screens/homeScreens.dart';
import 'package:food_delivery_try/screens/restorentScreens.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => HeadState(),
      child: MaterialApp(
        title: 'Flutter Food Delivery App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[50],
          primaryColor: Colors.deepOrangeAccent,
        ),
        home: HomeScreens(),
        routes: {
          HomeScreens.routeName: (ctx) => HomeScreens(),
          RestorentScreens.routeName: (ctx) => RestorentScreens(),
          CartScreens.routeName: (ctx) => CartScreens(),
        },
      ),
    );
  }
}
