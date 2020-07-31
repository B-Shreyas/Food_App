import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/models/food_model2.dart';
import 'package:food_app/models/food_model3.dart';
import 'package:food_app/pages/viewall_page.dart';
import 'package:food_app/widget/food_category.dart';
import 'package:food_app/widget/home_top_info.dart';
import 'package:food_app/widget/ordered_foods.dart';
import 'package:food_app/widget/search_field.dart';

//data
import 'package:food_app/data/food_data.dart';
import 'package:food_app/models/food_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<Food> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 20.0,),
          FoodCategory2(),
          SizedBox(height: 20.0,),
          FoodCategory3(),
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
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ExtendedNavBar(),
                  ),);
                },
                child: Container(
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent,
                    ),
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
//          Column(
//            children: _foods.map(_buildFoodItems).toList(),
//          ),
//          Column(
//            children: _foods.map(_buildFoodItems).toList(),
//          ),
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

  Widget _buildFoodItems2(Food2 food2){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: OrderedFoods(
        id: food2.id2,
        name: food2.name2,
        imagePath: food2.imagePath2,
        category: food2.category2,
        discount: food2.discount2,
        price: food2.price2,
        ratings: food2.ratings2,
      ),
    );
  }

  Widget _buildFoodItems3(Food3 food3){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: OrderedFoods(
        id: food3.id3,
        name: food3.name3,
        imagePath: food3.imagePath3,
        category: food3.category3,
        discount: food3.discount3,
        price: food3.price3,
        ratings: food3.ratings3,
      ),
    );
  }
}
