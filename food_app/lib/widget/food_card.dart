import 'package:flutter/material.dart';
import 'package:food_app/pages/breakfast_page.dart';
import 'package:food_app/pages/dinner_page.dart';
import 'package:food_app/pages/lunch_page.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  FoodCard({
    this.categoryName,
    this.imagePath,
    this.numberOfItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: RaisedButton(
        elevation: 0.0,
        color: Colors.white,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BreakFastPage(),
          ),);
        },
        child: Card(
              color: Color.fromRGBO(102, 102, 255, 30),
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 85.0,
                  width: 85.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                          offset: Offset(5.0, 5.0),
                        )
                      ]
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(categoryName,  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),),
                    Text("$numberOfItems kinds", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class FoodCard2 extends StatelessWidget {
  final String categoryName2;
  final String imagePath2;
  final int numberOfItems2;

  FoodCard2({
    this.categoryName2,
    this.imagePath2,
    this.numberOfItems2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
//      padding: EdgeInsets.only(right: 5.),
      margin: EdgeInsets.only(right: 80.0),
      child: RaisedButton(
        elevation: 0.0,
        color: Colors.white,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => LunchPage(),
          ),);
        },
        child: Card(
          color: Color.fromRGBO(102, 102, 255, 30),
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 85.0,
                  width: 85.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath2),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                          offset: Offset(5.0, 5.0),
                        )
                      ]
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(categoryName2,  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),),
                    Text("$numberOfItems2 kinds", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class FoodCard3 extends StatelessWidget {
  final String categoryName3;
  final String imagePath3;
  final int numberOfItems3;

  FoodCard3({
    this.categoryName3,
    this.imagePath3,
    this.numberOfItems3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: RaisedButton(
        color: Colors.white,
        elevation: 0.0,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DinnerPage(),
          ),);
        },
        child: Card(
          color: Color.fromRGBO(102, 102, 255, 30),
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 85.0,
                  width: 85.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath3),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                          offset: Offset(5.0, 5.0),
                        )
                      ]
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(categoryName3,  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),),
                    Text("$numberOfItems3 kinds", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






