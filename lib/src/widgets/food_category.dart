
import 'package:flutter/material.dart';
import 'package:foods/src/data/catagoryData.dart';
import '../model/category_model.dart';
import 'food_card.dart';

class FoodCategory extends StatelessWidget {
  final List< Category> _categories = categories ;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: 100.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (BuildContext context,int index){
            return FoodCard(
                categoryName: _categories[index].categoryName,
              imagePath: _categories[index].imagePath,
              numberOfItems: _categories[index].numberOfItems,
            );
          },
        ),
      ),
    );
  }
}
