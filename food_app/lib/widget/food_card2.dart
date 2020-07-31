//
//import 'package:flutter/material.dart';
//import 'package:food_app/pages/breakfast_page.dart';
//import 'package:food_app/pages/lunch_page.dart';
//import 'package:food_app/pages/order_page.dart';
////
////class FoodCard2 extends StatelessWidget {
////  final String categoryName2;
////  final String imagePath2;
////  final int numberOfItems2;
////
////  FoodCard2({
////    this.categoryName2,
////    this.imagePath2,
////    this.numberOfItems2,
////  });
////
////  @override
////  Widget build(BuildContext context) {
////    return Container(
////      margin: EdgeInsets.only(right: 20.0),
////      child: RaisedButton(
////        onPressed: (){
////          Navigator.of(context).push(MaterialPageRoute(
////            builder: (context) => LunchPage(),
////          ),);
////        },
////        child: Card(
////          color: Color(0xFF21BFBD),
////          elevation: 8,
////          child: Padding(
////            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
////            child: Row(
////              children: <Widget>[
////                Image(image: AssetImage(imagePath2),
////                  height: 65.0,
////                  width: 65.0,
////                ),
////                SizedBox(
////                  width: 20.0,
////                ),
////                Column(
////                  mainAxisAlignment: MainAxisAlignment.center,
////                  children: <Widget>[
////                    Text(categoryName2,  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
////                    Text("$numberOfItems2 kinds"),
////                  ],
////                ),
////              ],
////            ),
////          ),
////        ),
////      ),
////    );
////  }
////}
////
