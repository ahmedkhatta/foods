import 'package:flutter/material.dart';

import 'sigin_page.dart';

class SigUpPage extends StatefulWidget {
  @override
  _SigupPageState createState() => _SigupPageState();
}

class _SigupPageState extends State<SigUpPage> {
  Widget _bulidEmailTextFeild() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "الايميل ",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,
          )),
    );
  }
  Widget _bulidUserNameTextFeild() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "  اسم المستخدم",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,
          )),
    );
  }
  bool _fasibleIcon =true;
  bool  _fasibleIconCONFIRME=true;

  Widget _bulidPasswordTextFeild() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "الرقم السري",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,

          ),
          suffixIcon: IconButton(icon: Icon(Icons.visibility_off), onPressed: (){
            setState(() {
              _fasibleIcon=!_fasibleIcon;
            });
          })
      ),
      obscureText: _fasibleIcon,

    );
  }
  Widget _bulidConfigePasswordTextFeild() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "تأكيد الرقم السري",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,

          ),
          suffixIcon: IconButton(icon: Icon(Icons.visibility_off), onPressed: (){
            setState(() {
              _fasibleIconCONFIRME=!_fasibleIconCONFIRME;
            });
          })
      ),
      obscureText: _fasibleIconCONFIRME,

    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "حساب جديد",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height:40.0,
              ),

              SizedBox(
                height: 10.0,
              ),
              Card(
                elevation: 7.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _bulidUserNameTextFeild(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _bulidEmailTextFeild(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _bulidPasswordTextFeild(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _bulidConfigePasswordTextFeild(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue),
                child: Center(
                  child: Text(
                    " حساب جديد",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Divider(height: 25.0,color:Colors.grey ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("بالتاكيد لديك حساب الان ؟",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context )=>SiginPage()));

                    },
                    child: Text("تسجيل دخول ",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
