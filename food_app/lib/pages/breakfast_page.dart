import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/admin_pages/add_food_item.dart';
import 'package:food_app/screens/main_screen1.dart';
import 'package:google_fonts/google_fonts.dart';

class Breakpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BreakFastPage(),
    );
  }
}

class BreakFastPage extends StatefulWidget {
  @override
  _BreakFastPageState createState() => _BreakFastPageState();
}

class _BreakFastPageState extends State<BreakFastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(102, 102, 255, 30),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BottomNavBar(),
                      ),
                    );

                 },
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.filter_list,
                          ),
                          color: Colors.white,
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.menu,
                          ),
                          color: Colors.white,
                          onPressed: () {}),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Healthy',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'BreakFast',
                  style: GoogleFonts.montserratAlternates(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 150.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: <Widget>[
                        _buildFoodItems('assets/images/omlete2.jpg',
                            "Bread-Omlete", "Rs.100"),
                        SizedBox(height: 10.0),
                        _buildFoodItems('assets/images/paranthas.jpeg',
                            "Healthy Parathas", "Rs.150"),
                        SizedBox(height: 10.0),
                        _buildFoodItems(
                            'assets/images/rolls.jpeg', "Veg Rolls", "Rs.110"),
                        SizedBox(height: 10.0),
                        _buildFoodItems('assets/images/lunch.jpeg',
                            "Bread Butter", "Rs.50"),
                        SizedBox(height: 10.0),
                        _buildFoodItems(
                            'assets/images/salad.jpg', "Salad", "Rs.80"),
                        SizedBox(height: 10.0),
                        _buildFoodItems(
                            'assets/images/oats.jpg', "Oats", "Rs.130"),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                        onTap: (){
                          // ignore: non_constant_identifier_names
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext) => AddFoodItem()));
                        },
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItems(String imgPath, String foodName, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {
//          Navigator.of(context).push(MaterialPageRoute(
//            builder: (context) => DetailPage(heroTag: imgPath, foodName: foodName, foodPrice: price,)
//          ),);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(children: [
                Hero(
                  tag: imgPath,
                  child: Image(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 75.0,
                    width: 75.0,
                  ),
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodName,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                    Text(
                      price,
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                )
              ]),
            ),
            IconButton(
            onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),

                ),
          ],
        ),
      ),
    );
  }
}
