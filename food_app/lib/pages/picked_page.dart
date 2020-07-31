import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/widget/button.dart';
import 'package:food_app/pages/picked_page.dart';

class PickedUpPage extends StatefulWidget {
  @override
  _PickedUpPageState createState() => _PickedUpPageState();
}

class _PickedUpPageState extends State<PickedUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,

        title: Text('Picked Up', style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          Row(
          )
        ],

      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Center(
                  child: Text(
                  "Your Order has been Picked...",

                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),

              ),

              ),
              Icon(Icons.check_circle, size: 25.0, color: Colors.blue,)
            ],
          ),

          SizedBox(height: 60.0,),
          Image.asset("assets/images/maps.png"),
//          SizedBox(height: 100.0,),
//          SizedBox(height: 100.0,),
         // SizedBox(height: 100.0,),
         // SizedBox(height: 10.0,),
          Container(
              child: Row(
               mainAxisAlignment: MainAxisAlignment.end,

                children: <Widget>[

                  Text("Thanks for buying with us....", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black ),)
                ],
              )
          )

        ],
      ),
    );
  }
}
