import 'package:carousel_pro/carousel_pro.dart';
import 'package:extended_navbar_scaffold/extended_navbar_scaffold.dart';
import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Carousel',
      home: FavouritePage(),
    );
  }
}

class FavouritePage extends StatefulWidget {
  _FavouritePageState createState() => new _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    Widget carousel = new Carousel(
      boxFit: BoxFit.cover,
      images: [
        new AssetImage('assets/images/paranthas.jpeg'),
        new AssetImage('assets/images/omlete2.jpg'),
        new AssetImage('assets/images/biryani.jpeg'),
        new AssetImage('assets/images/supper_1.jpeg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
    );

    Widget banner = new Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: new Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0)),
          color: Colors.amber.withOpacity(0.5),
          border: Border.all(color: Colors.red,
            width: 2,
          ),
        ),
        padding: const EdgeInsets.all(10.0),
        child: new Text(
          'Your Favourite Foods',
          style: TextStyle(
            fontFamily: 'fira',
            fontSize: animation.value,//18.0,
            //color: Colors.white,
          ),
        ),
      ),
      // ),
      //  ),
    );

    return new Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("Recently Ordered Items",),
        shape: kAppbarShape,
        backgroundColor: Color.fromRGBO(102, 102, 255, 30),
      ),
      backgroundColor: Colors.white,
      body: new Center(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          height: screenHeight / 2,
          child: new ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: new Stack(
              children: [
                carousel,
                banner,
              ],
            ),
          ),
        ),
      ),
    );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}