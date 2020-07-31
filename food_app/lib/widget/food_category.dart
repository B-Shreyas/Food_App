import 'package:flutter/material.dart';
import 'package:food_app/data/category_data2.dart';
import 'package:food_app/data/category_data3.dart';
import 'food_card.dart';

import 'package:food_app/models/category_model.dart';
// importing data
import '../data/category_data.dart';

//model
import '../models/category_model.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },

      ),
    );
  }
}


class FoodCategory2 extends StatelessWidget {
  final List<Category2> _categories2 = categories2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories2.length,
        itemBuilder: (BuildContext context, int index){
          return FoodCard2(
            categoryName2: _categories2[index].categoryName2,
            imagePath2: _categories2[index].imagePath2,
            numberOfItems2: _categories2[index].numberOfItems2,
          );
        },

      ),
    );
  }
}

class FoodCategory3 extends StatelessWidget {
  final List<Category3> _categories3 = categories3;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories3.length,
        itemBuilder: (BuildContext context, int index){
          return FoodCard3(
            categoryName3: _categories3[index].categoryName3,
            imagePath3: _categories3[index].imagePath3,
            numberOfItems3: _categories3[index].numberOfItems3,
          );
        },

      ),
    );
  }
}


