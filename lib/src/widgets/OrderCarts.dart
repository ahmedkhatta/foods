import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 80,
              width: 45.0,
              decoration: BoxDecoration(
                border: Border.all(width: 2.0,color: Colors.grey),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: <Widget>[
                  InkWell(

                      child: Icon(Icons.keyboard_arrow_up,color: Colors.grey),
                  onTap: (){},),
                  Text("2",style: TextStyle(fontSize: 16,),),
                  InkWell(
                    child: Icon(Icons.keyboard_arrow_down,color: Colors.grey),
                    onTap: (){},
                  ),
                ],
              ),
            ),
            SizedBox(width: 20.0,),
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image:DecorationImage(image:  AssetImage("assets/images/lunch.jpeg"),
                fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 5.0),

                  )
                ]
              ),

            ),
            SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("وجبة الفطار",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.0),),
                SizedBox(width: 5.0,),
                Text("100 جنيه",style: TextStyle(color: Colors.orange),),
                SizedBox(width: 10.0,),
                Container(
                  height:25.0,
                  width: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(

                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10.0),
                            child: Row(
                              children: <Widget>[
                                Text("فطير",style:TextStyle(color: Colors.grey),),
                                SizedBox(width: 5,),
                                Text("x" ,style: TextStyle(color: Colors.redAccent),),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10.0),
                            child: Row(
                              children: <Widget>[
                                Text("جبنه",style:TextStyle(color: Colors.grey)),
                                SizedBox(width: 5,),
                                Text("x",style: TextStyle(color: Colors.redAccent),),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10.0),
                            child: Row(
                              children: <Widget>[
                                Text("سلطه",style:TextStyle(color: Colors.grey)),
                                SizedBox(width: 5,),
                                Text("x",style: TextStyle(color: Colors.redAccent),),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5,),
                              Text("بطاطس",style:TextStyle(color: Colors.grey)),
                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
    Spacer(),
     GestureDetector(child: Icon(Icons.cancel,color:Colors.grey,),
     onTap: (){},
     ),



          ],
        ),
      ),
    );
  }
}
