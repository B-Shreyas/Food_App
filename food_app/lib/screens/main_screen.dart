//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:food_app/pages/favourite_page.dart';
//// data
//import 'package:food_app/pages/home_page.dart';
//import 'package:food_app/pages/order_page.dart';
//import 'package:food_app/pages/profile_page.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
////import 'package:bottom_personalized_dot_bar/bottom_personalized_dot_bar.dart';
////import 'dart:math';
////import 'package:food_app/pages/address_page.dart';
//
//
//
//class BottomNavBar extends StatefulWidget {
//  @override
//  _BottomNavBarState createState() => _BottomNavBarState();
//}
//
//class _BottomNavBarState extends State<BottomNavBar > {
//  int currentTabIndex = 0;
//
//  List<Widget> pages;
//  Widget currentPage;
//
//  HomePage homePage;
//  OrderPage orderPage;
//  FavouritePage favouritePage;
//  ProfilePage profilePage;
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    homePage = HomePage();
//    orderPage = OrderPage();
//    favouritePage = FavouritePage();
//    profilePage = ProfilePage();
//    pages = [homePage, orderPage, favouritePage, profilePage];
//    currentPage = homePage;
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      bottomNavigationBar: BottomNavigationBar(
//        elevation: 5.0,
//        backgroundColor: Colors.white,
//        onTap: (int index) {
//          setState(() {
//            currentTabIndex = index;
//            currentPage = pages[index];
//          });
//        },
//        currentIndex: currentTabIndex,
//        type: BottomNavigationBarType.fixed,
//        items: <BottomNavigationBarItem>[
//        BottomNavigationBarItem(
//            icon: Icon(Icons.home, color: Colors.black,),
//            title: Text("Home",)
//        ),
//
//        BottomNavigationBarItem(
//            icon: Icon(Icons.shopping_cart, color: Colors.black,),
//            title: Text("Orders")
//        ),
//
//        BottomNavigationBarItem(
//            icon: Icon(Icons.favorite, color: Colors.black),
//            title: Text("Favourite"),
//        ),
//
//        BottomNavigationBarItem(
//            icon: Icon(Icons.person, color: Colors.black),
//             title: Text("Profile"),
//        ),
//      ],
//      ),
//      body: currentPage,
//      appBar: currentTabIndex == 1 ? AppBar(
//        title: Text("Food Cart", style: TextStyle(color: Colors.black,),),
//        centerTitle: true,
//        backgroundColor: Colors.white,
//        elevation: 0.0,
//      ): null,
//    );
//  }
//}
