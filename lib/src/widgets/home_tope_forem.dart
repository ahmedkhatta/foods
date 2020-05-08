import 'package:flutter/material.dart';

class HomeTopIfo extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 32, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10,top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text("ماذا تريد أن تأكل ؟", style: textStyle),
              Text("", style: textStyle),
            ],
          ),
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
