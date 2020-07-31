import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:food_app/pages/favourite_page.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/pages/order_page.dart';
import 'package:food_app/pages/profile_page.dart';
import 'package:food_app/scoped-model/food_model.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {

  final FoodModel foodModel;
  BottomNavBar({this.foodModel});


  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;
  // Create all pages
  final HomePage _homePage = HomePage();
  final OrderPage _orderPage = OrderPage();
  final FavouritePage _favouritePage = FavouritePage();
  final ProfilePage _profilePage = ProfilePage();

  Widget _showPage = new HomePage();
  Widget _pageChooser(int page) {
    widget.foodModel.fetchFoods();


    //call the fetch method on food

    switch (page) {
      case 0:
        return _homePage;
        break;
      case 1:
        return _orderPage;
        break;
      case 2:
        return _favouritePage;
        break;
      case 3:
        return _profilePage;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text(
              "No page found by page chooser",
              style: new TextStyle(fontSize: 30.0),
            ),
          ),
        );
    }
  }

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
//          key: _bottomNavigationKey,
          index: pageIndex,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.shopping_cart, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.person, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Color.fromRGBO(102, 102, 255, 30),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: _showPage,
//            child: Column(
//              children: <Widget>[
//                Text(pageIndex.toString(), textScaleFactor: 10.0),
//                RaisedButton(
//                  child: Text('Go To Page of index 1'),
//                  onPressed: () {
//                    final CurvedNavigationBarState navBarState =
//                        _bottomNavigationKey.currentState;
//                    navBarState.setPage(1);
//                  },
//                )
//              ],
//            ),
          ),
        ));
  }
}
