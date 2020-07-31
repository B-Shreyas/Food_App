import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/admin_pages/add_food_item.dart';
import 'package:food_app/pages/detail_page.dart';
import 'package:food_app/screens/main_screen1.dart';
import 'package:google_fonts/google_fonts.dart';


class Dinnerpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DinnerPage(),
    );
  }
}

class DinnerPage extends StatefulWidget {
  @override
  _DinnerPageState createState() => _DinnerPageState();
}

class _DinnerPageState extends State<DinnerPage> {
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
                  'Dinner',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
//                Text(
//                  'BreakFast',
//                  style: GoogleFonts.montserratAlternates(
//                    color: Colors.white,
//                    fontSize: 25.0,
//                  ),
//                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
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
                        _buildFoodItems('assets/images/veg_thali.jpg',
                            "Non-Veg-Thali", "Rs.250"),
                        SizedBox(height: 10.0),

                        _buildFoodItems(
                            'assets/images/bahubali.jpg', "Veg-Thali", "Rs.280"),
                        SizedBox(height: 10.0),

                        _buildFoodItems(
                            'assets/images/mixveg.jpg', "Mix-Veg", "Rs.220"),

                        SizedBox(height: 10.0),
                        _buildFoodItems('assets/images/eggcurry.jpeg',
                            "Egg-Curry", "Rs.230"),
                        SizedBox(height: 10.0),

                        _buildFoodItems('assets/images/biryani.jpeg',
                            "Biryani", "Rs.200"),

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
//              builder: (context) => DetailPage(heroTag: imgPath, foodName: foodName, foodPrice: price,)
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
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {}
            ),
          ],
        ),
      ),
    );
  }
}
