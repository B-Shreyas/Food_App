import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/widget/food_category.dart';
import 'package:food_app/widget/home_top_info.dart';
import 'package:food_app/widget/ordered_foods.dart';
import 'package:food_app/widget/search_field.dart';

//data
import 'package:food_app/data/food_data.dart';
import 'package:food_app/models/food_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<Food> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[600],
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 20.0,),
          SearchField(),
          SizedBox(height: 20.0,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Frequently ordered foods",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {

                },
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
             children: _foods.map(_buildFoodItems).toList(),
          ),

        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: OrderedFoods(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        ratings: food.ratings,
      ),
    );
  }
}
