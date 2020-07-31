import 'package:flutter/material.dart';
import 'package:food_app/pages/sign_in_page.dart';
import 'package:food_app/src/app.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _toogleVisibility = true;
  bool _toogleConfirmedVisibility = true;

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildUserNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Username",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }


  Widget _buildPhoneField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Phone No",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
        suffixIcon: Icon(
         Icons.phone_iphone,
        ),
      ),
      obscureText: _toogleVisibility,
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _toogleVisibility = !_toogleVisibility;
            });
          },
          icon:_toogleVisibility ?  Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ),
      ),
      obscureText: _toogleVisibility,
    );
  }

  Widget _buildConfirmedPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirmed Password",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _toogleConfirmedVisibility = !_toogleConfirmedVisibility;
            });
          },
          icon:_toogleConfirmedVisibility ?  Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ),
      ),
      obscureText: _toogleConfirmedVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign Up",
              style: GoogleFonts.zillaSlab(fontSize: 45.0, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(
              height: 40.0,
            ),
            Card(
              color: Colors.blue,
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildUserNameTextField(),
                    SizedBox(
                      height: 15.0,
                    ),
                    _buildEmailTextField(),
                    SizedBox(
                      height: 15.0,
                    ),
                    _buildPhoneField(),
                    SizedBox(
                      height: 15.0,
                    ),
                    _buildPasswordTextField(),
                    SizedBox(
                      height: 15.0,
                    ),
                    _buildConfirmedPasswordTextField(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            RaisedButton(
              elevation: 0.0,
              color: Colors.white,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyApp1(),
                ),);
              },
              child: Container(
                height: 45.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Divider(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Already have an account?", style: TextStyle(color: Color(0xFFBDC2CB), fontWeight: FontWeight.bold, fontSize: 18.0),),
                SizedBox(
                  width: 10.0,
                ),
                GestureDetector(
                    onTap: (){
                      // ignore: non_constant_identifier_names
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext) => SignInPage()));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


