import 'package:flutter/material.dart';
import 'package:foods/src/app.dart';
import 'package:foods/src/pages/favoritePage.dart';
import 'package:foods/src/pages/home_page.dart';
import 'package:foods/src/pages/order_page.dart';
import 'package:foods/src/pages/profil_page.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  HomePage homePage;
  OrderPage   orderpage;
  favoritePage favoritPage ;
  ProfilePage profilePage;
  List<Widget> pages;
  Widget curentPages ;
   int CruntTapIndex =0;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage=HomePage();
    orderpage=OrderPage();
    favoritPage=favoritePage();
    profilePage=ProfilePage();
    pages=[homePage, orderpage,favoritPage,profilePage];
    curentPages=homePage;
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index){
            setState(() {
              CruntTapIndex=index;
              curentPages=pages[index];
            });
          },
           currentIndex: CruntTapIndex,
          type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
               icon: Icon(Icons.home) ,
                title: Text("الرئيسيه")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart) ,
                  title: Text("المشترات")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite) ,
                  title: Text("المفضله")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person) ,
                  title: Text("الشخصيه")
              ),
            ],
        ),
        body: curentPages,

      ),
    );
  }
}
