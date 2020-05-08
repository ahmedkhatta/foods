import 'package:flutter/material.dart';
import 'package:foods/src/search/searchFiled.dart';
import 'package:foods/src/widgets/bought_foods.dart';
import '../data/food_data.dart';
import '../model/food_model.dart';
import '../widgets/food_category.dart';
import '../widgets/home_tope_forem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Food> _foods=foods;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
          children: <Widget>[
            HomeTopIfo(),
            FoodCategory(),
            SizedBox(
              height: 10.0,
            ),
            searchFiled(),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "الأطعمه المشتريه بشكل متكرر",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "كل الأطعمه",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              children: _foods.map( _buildFoodITems).toList(),
            ) ,
          ],
        ),
      ),
    );
  }
  Widget _buildFoodITems( Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child:  BoughtFoods(
        id: food.id,
        name:  food.name,
        imagePath: food.imagePath,
        category: food.category,
        price: food.price,
        discount: food.discount,
        ratings: food.ratings,
      ),
    );
  }
}
