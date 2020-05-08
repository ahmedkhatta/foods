import 'package:flutter/material.dart';
class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;
  FoodCard({this.imagePath,this.categoryName,this.numberOfItems});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: EdgeInsets.only(left: 15.0),
        child: Card(
          color: Colors.white70,

          child: Padding(
            padding:EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
            child: Row(
              children: <Widget>[

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(categoryName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                    Text("${numberOfItems} جنيه",style:  TextStyle( fontSize: 16.0),  ),
                  ],
                ),
                SizedBox(width: 20.0,),
                Image(
                  image: AssetImage(imagePath,),
                  height: 70.0,
                  width: 70.0,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
