import 'package:flutter/material.dart';
import 'package:food_app/scoped-model/food_model.dart';
//import 'package:food_app/pages/address_page.dart';
//import 'package:food_app/pages/home_page.dart';
//import 'package:food_app/pages/order_page.dart';
import 'package:food_app/screens/main_screen.dart';
import 'package:food_app/screens/main_screen1.dart';
import 'package:scoped_model/scoped_model.dart';


class MyApp1 extends StatelessWidget {

final FoodModel foodModel = FoodModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<FoodModel>(
      model: foodModel,
    child: MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Food Delivery App",
    theme: ThemeData(
    primaryColor: Colors.deepOrange,
    ),
    home: BottomNavBar(
      foodModel: foodModel
    ),
    )
    );
  }
}


