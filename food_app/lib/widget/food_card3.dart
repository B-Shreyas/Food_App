//
//import 'package:flutter/material.dart';
//import 'package:food_app/pages/breakfast_page.dart';
//import 'package:food_app/pages/dinner_page.dart';
//
//class FoodCard3 extends StatelessWidget {
//  final String categoryName3;
//  final String imagePath3;
//  final int numberOfItems3;
//
//  FoodCard3({
//    this.categoryName3,
//    this.imagePath3,
//    this.numberOfItems3,
//  });
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      margin: EdgeInsets.only(right: 20.0),
//      child: RaisedButton(
//        onPressed: (){
//          Navigator.of(context).push(MaterialPageRoute(
//            builder: (context) => DinnerPage(),
//          ),);
//        },
//        child: Card(
//          color: Color(0xFF21BFBD),
//          elevation: 8,
//          child: Padding(
//            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
//            child: Row(
//              children: <Widget>[
//                Image(image: AssetImage(imagePath3),
//                  height: 65.0,
//                  width: 65.0,
//                ),
//                SizedBox(
//                  width: 20.0,
//                ),
//                Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Text(categoryName3,  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
//                    Text("$numberOfItems3 kinds"),
//                  ],
//                ),
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
//
