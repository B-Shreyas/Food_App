import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/pages/sign_in_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'app.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
     // loadingText: Text("This is App"),
      seconds: 5,
      backgroundColor: Colors.white,
      image: Image.asset('assets/images/bahubali.jpg'),
      title: Text(
        'Welcome to Food Ordering Platform',
        style: GoogleFonts.zillaSlabHighlight(
            fontSize: 23.0, fontWeight: FontWeight.bold, color: Colors.blueAccent),
      ),
      loaderColor: Colors.black,
      photoSize: 150.0,
      navigateAfterSeconds: SignInPage(),
    );
  }
}

