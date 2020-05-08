import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  final String id;
  final String name;
  final String imagePath;
  final double price;
  final double discount;
  final double ratings;
  final String category;
  BoughtFoods(
      {this.name,
        this.imagePath,
        this.price,
        this.category,
        this.id,
        this.discount,
        this.ratings});

  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 340.0,
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,

            child: Container(
              height: 60.0,
              width: 320.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black12,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )),
            ),
          ),
          Positioned(
            right: 10.0,
            bottom: 10.0,
            left: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                    widget.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                    Row(children: <Widget>[

                      Icon(Icons.star,color: Colors.blueAccent,size: 18.0,),
                      Icon(Icons.star,color: Colors.blueAccent,size: 18,),
                      Icon(Icons.star,color: Colors.blueAccent,size: 18.0,),
                      Icon(Icons.star,color: Colors.blueAccent,size: 18.0,),
                      Icon(Icons.star,color: Colors.blueAccent,size: 18.0,),
                      SizedBox(width: 10.0,),
                      Text(" (${widget.ratings.toString()} مشاهده) ",style: TextStyle(color: Colors.grey),)
                    ],)
                  ],
                ),

                Column(
                  children: <Widget>[
                    Text(widget.price.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.orange),),
                    Text("اطلب الأن",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.grey),),

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
