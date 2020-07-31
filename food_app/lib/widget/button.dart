import 'package:flutter/material.dart';
import 'package:food_app/pages/picked_page.dart';
import 'package:food_app/pages/address_page.dart';

class Button extends StatelessWidget {
  final String btntext;
  Button({this.btntext});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
        decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(30.0)
        ),
        child: Center(
    child: RaisedButton(
      elevation: 0.0,
    color: Colors.blue,
    onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PickedUpPage(),
      ),);
    },
        child: Text(
          'Order Now',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        ),
        ),
    );
  }
}

class Button1 extends StatelessWidget {
  final String btntext;
  Button1({this.btntext});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(30.0)
      ),
      child: Center(
        child: RaisedButton(
          elevation: 0.0,
          color: Colors.blue,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PickedUpPage(),
            ),);
          },
          child: Text(
            'Add Food Item',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}

