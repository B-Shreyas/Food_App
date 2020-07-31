import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/pages/order_page.dart';

class OrderCard extends StatefulWidget {
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Card(
          color: Colors.red,
          elevation: 5.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 75.0,
                width: 45.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.black87,
                  ),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.keyboard_arrow_up, color: Colors.black,),
                     ),
                    Text("0", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold ,color: Colors.black87),),
                    InkWell(
                      onTap: () {},
                        child: Icon(Icons.keyboard_arrow_down, color: Colors.black,),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20.0,),
              Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/mixveg.jpg"),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Grilled Chicken", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5.0,),
                  Text("3.0", style: TextStyle(color: Colors.amber[600], fontSize: 16.0),),
                  SizedBox(height: 5.0,),
                  Container(
                    height: 25.0,
                    width: 120.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          child: Row(
                            children: <Widget>[
                              Text("Chicken", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                              SizedBox(width: 5.0,),
                              InkWell(
                                onTap: () {},
                                  child: Text("x",
                                    style: TextStyle(
                                        color: Colors.amber[600],
                                        fontWeight: FontWeight.bold),
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
//              SizedBox(width: 30.0,),
            Spacer(),
              InkWell(
                onTap: (){},
                  child: Icon(Icons.cancel, color: Colors.amber[600],)),
            ],
          ),
        ),
      ),
    );
  }
}
