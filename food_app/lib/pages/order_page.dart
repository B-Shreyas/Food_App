import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/pages/address_page.dart';
import 'package:food_app/pages/sign_in_page.dart';
import 'package:food_app/widget/order_card.dart';


//class Order extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.amber[600],
//    );
//  }
//}

void main() => runApp(ShriApp());

class ShriApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Routing1",
      home: OrderPage(),
    );
  }
}


class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text("Food Cart", style: TextStyle(color: Colors.black),),
//        centerTitle: true,
//        backgroundColor: Colors.white,
//        elevation: 0.0,
//      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              OrderCard(),
              OrderCard(),
            ],
          ),

        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }
  Widget _buildTotalContainer(){
    return  Card(
      color: Color.fromRGBO(160, 160, 160, 80),
      child: Container(
        height: 300.0,
        margin: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
//          ListTile(
//            leading: Text("Cart Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
//            trailing: Text("Rs. 350", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
//          ),
//
//          ListTile(
//            leading: Text("Discount", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
//            trailing: Text("5 %", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
//          ),
//
//          ListTile(
//            leading: Text("GST Tax", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
//            trailing: Text("18 %", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
//          ),
          Card(
            color: Colors.black,
            child: Card(
              color: Colors.red,
              elevation: 5.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Cart Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
                  Spacer(),
                  Text("Rs. 350.0", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
                ],
              ),
            ),
          ),
              SizedBox(height: 10.0,),
            Card(
              color: Colors.black,
              child: Card(
                color: Colors.red,
                elevation: 5.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Discount", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
                    Spacer(),
                    Text("10.00%", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
              ),
            ),
              SizedBox(height: 10.0,),
            Card(
              color: Colors.black,
              child: Card(
                color: Colors.red,
                elevation: 5.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("GST", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
                    Spacer(),
                    Text("18.00%", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
              ),
            ),
            Divider(height: 40.0, color: Colors.black),
            SizedBox(height: 10.0,),

            Card(
              color: Colors.black,
              child: Card(
                color: Colors.red,
                elevation: 5.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Grand Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
                    Spacer(),
                    Text("Rs. 320.00", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0,),
//                GestureDetector(
//                  onTap: (){
//                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => SignInPage()));
//                  },
//                ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: RaisedButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AddressPageFlutter(),
                    ),);
                    // Navigate to the Address screen using a named route.
                    //  Navigator.pushNamed(context, '/addresspage');
                  },
                  child: Text(
                      "Proceed to Order",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),

                  // Way to go for address page

                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}