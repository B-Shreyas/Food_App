import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeTopInfo  extends StatelessWidget {
  myt(){
    Fluttertoast.showToast(
        msg: "Welcome to our Food App",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP_LEFT,
        timeInSecForIosWeb: 1,
        backgroundColor: Color.fromRGBO(102, 102, 255, 30),
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  final textStyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Hungry?', style: GoogleFonts.zillaSlabHighlight(color: Colors.black, fontSize: 50.0),),

             SizedBox(height: 15.0,),
             // Text('like to eat?', style: TextStyle),
              Text('Grab a food with us', style: GoogleFonts.actor(color: Colors.red, fontSize: 29.0, fontWeight: FontWeight.bold)),
//              Text("Hi", style: GoogleFonts.montserrat(color: Colors.green),)
            ],
          ),
          IconButton(icon: Icon(Icons.fastfood, size: 25.0, color: Colors.green,), onPressed: myt),
          Icon(Icons.notifications, size: 30.0, color: Colors.amber.shade700,),
        ],
      ),
    );

  }
}
