import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/models/food_model.dart';
import 'package:food_app/widget/button.dart';
import 'package:scoped_model/scoped_model.dart';

class AddFoodItem extends StatefulWidget {
  AddFoodItem({Key key}) : super(key: key);
  @override
  _AddFoodItemState createState() => _AddFoodItemState();
}

class _AddFoodItemState extends State<AddFoodItem> {
  String title;
  String category;
  String description;
  String price;
  String discount;

  GlobalKey<FormState> _foodItemFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      bottomNavigationBar: Button1(),
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 16.0),
//          width: MediaQuery.of(context).size.width,
//          height: MediaQuery.of(context).size.height,
          child: Form(
            key: _foodItemFormKey,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  width: MediaQuery.of(context).size.width,
                  height: 170.0,
                  decoration: BoxDecoration(
                    // color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/supper_1.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                _buildTextFormField("Food Title"),
                SizedBox(
                  height: 20.0,
                ),
                _buildTextFormField("Category"),
                SizedBox(
                  height: 20.0,
                ),
                _buildTextFormField("Description", maxLine: 3),
                SizedBox(
                  height: 20.0,
                ),
                _buildTextFormField(
                  "Price",
                ),
                SizedBox(
                  height: 20.0,
                ),
                _buildTextFormField("Discount"),
                SizedBox(
                  height: 100.0,
                ),

                Button1(),
//         ScopedModelDescendant(
//           builder:  (BuildContext contet, Widget child, MainModel),
//
//         ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField(String hint, {int maxLine = 1}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "$hint",
      ),
      maxLines: maxLine,
      keyboardType: hint == "Price" || hint == "Discount"
          ? TextInputType.number
          : TextInputType.text,
      // ignore: missing_return
      validator: (String value) {

        if (value.isEmpty && hint == "Food Title") {
          return "The Food title is required";
        }

        if (value.isEmpty && hint == "Category") {
          return "The food category is required";
        }

        if (value.isEmpty && hint == "Description") {
          return "The food description is required";
        }

        if (value.isEmpty && hint == "Price") {
          return "The food price is required";
        }
      },
      onChanged: (String value) {
        if (hint == "Food Title") {
          title = value;
        }

        if (hint == "Category") {
          category = value;
        }

        if (hint == "Description") {
          description = value;
        }

        if (hint == "Price") {
          price = value;
        }

        if (hint == "Discount") {
          discount = value;
        }
      },
    );
  }
}

