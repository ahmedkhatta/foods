import 'package:flutter/material.dart';
import 'package:foods/src/screens/main_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"food Delivery app",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: MainScreen(),
    );

  }
}

