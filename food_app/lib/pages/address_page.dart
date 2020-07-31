import 'package:flutter/material.dart';
import 'package:food_app/pages/picked_page.dart';
import 'package:food_app/pages/sign_in_page.dart';
import 'package:food_app/src/app.dart';
import 'package:food_app/widget/button.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressPageFlutter extends StatefulWidget {
  @override
  _AddressPageFlutterState createState() => _AddressPageFlutterState();
}

class _AddressPageFlutterState extends State<AddressPageFlutter> {
  bool _toogleVisibility = true;
  bool _toogleConfirmedVisibility = true;

  Widget _buildFirstNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "First Name",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildLastNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Last Name",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }


  Widget _buildAddress1Field() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Address 1",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
      obscureText: _toogleVisibility,
    );
  }

  Widget _buildAddress2Field() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Address 2",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildCityField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "City",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }


  Widget _buildPincodeField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Pin Code",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Enter Your",
              style: GoogleFonts.zillaSlab(fontSize: 35.0, fontWeight: FontWeight.bold, color: Colors.blue),
            ),

//            SizedBox(
//              height: 20.0,
//            ),
            Text(
              "Address",
              style: GoogleFonts.zillaSlab(fontSize: 35.0, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(
              height: 30.0,
            ),
            Card(
              color: Colors.blue,
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildFirstNameTextField(),
                    SizedBox(
                      height: 15.0,
                    ),
                    _buildLastNameTextField(),
                    SizedBox(
                      height: 15.0,
                    ),
                    _buildAddress1Field(),
                    SizedBox(
                      height: 15.0,
                    ),
                   _buildAddress2Field(),
                    SizedBox(
                      height: 15.0,
                    ),
                   _buildCityField(),
                    SizedBox(
                      height: 15.0,
                    ),
                    _buildPincodeField(),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Button(),
          ],
        ),
      ),
    );
  }
}


