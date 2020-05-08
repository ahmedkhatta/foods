import 'package:flutter/material.dart';

import 'sing_up_page.dart';

class SiginPage extends StatefulWidget {
  @override
  _SiginPageState createState() => _SiginPageState();
}

class _SiginPageState extends State<SiginPage> {
  Widget _bulidEmailTextFeild() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "الايميل او اسم المستخدم",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,
          )),
    );
  }
bool _fasibleIcon =true;
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

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "تسجيل الدخول ",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "نسيت الرقم السري ؟",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  )
                ],
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
                      _bulidEmailTextFeild(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _bulidPasswordTextFeild(),
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
                    "تسجيل الدخول",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(height: 25.0,color:Colors.grey ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("ليس لديك اي حساب ؟",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context )=>SigUpPage()));
                    },
                    child: Text("حساب جديد",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
