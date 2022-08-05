//import 'package:bakery_app/OptionSecreen.dart';
import 'package:flutter/material.dart';
import 'package:gaza_bakery/MainScreen.dart';
import 'package:gaza_bakery/SignupSecreen.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

class LoginSecreen extends StatefulWidget {
  static const id = 'LoginSecreen';
  const LoginSecreen({Key? key}) : super(key: key);

  @override
  State<LoginSecreen> createState() => _LoginSecreenState();
}

class _LoginSecreenState extends State<LoginSecreen> {
  bool PasswordVisable = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'), // English, no country code
        //Locale('es', ''), // Spanish, no country code
      ],
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        //appBar: AppBar(title: Text("AppBar title"),),
        body: Container(
          // color: b,
          // height: double.infinity,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                //1
                Container(
                  margin: EdgeInsets.all(8.0),
                  alignment: Alignment(1.0, 1.0),
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'تسجيل الدخول ',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.brown),
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  margin: EdgeInsets.all(
                      8.0), //حدود لكل الكونتينبر يعني لكل الي بداخلها
                  child: Image.asset("assets/images/login1.png"),
                ),
                //2
                Container(
                  margin: EdgeInsets.only(
                      right: 8.0,
                      left: 8.0), //حدود لكل الكونتينبر يعني لكل الي بداخلها
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'البريد الالكتروني او رقم الجوال',
                      //hintStyle: TextStyle(fontSize: 20,),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                //3
                Container(
                  margin: EdgeInsets.only(
                      right: 8.0,
                      left: 8.0,
                      top: 8.0), //حدود لكل الكونتينبر يعني لكل الي بداخلها
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          PasswordVisable
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.amber,
                        ), //يتحكم الايقون
                        onPressed: () {
                          setState(() {
                            PasswordVisable = !PasswordVisable;
                          });
                        },
                      ),
                      hintText: 'كلمة المرور',
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: PasswordVisable, //تحكم اذا النص مرئي او لا
                  ),
                ),
                SizedBox(height: 5.0),
                //4
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(right: 220.0),
                  child: InkWell(
                    child: Text(
                      'هل نسيت كلمة المرور?',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                ////////////////////////////////////////////////////////////////////
                //buttom
                Container(
                  margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  height: 45.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueGrey,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: RaisedButton(
                        onPressed: () => setState(() {
                          Navigator.pushNamed(context, MainScreen.id);
                          //str = mycontroller.text;
                        }),
                        color: Colors.brown,
                        child: Center(
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                // Container(
                // child: Text('انشاء حساب جديد',
                //   style: TextStyle(fontFamily: 'Montserrat',fontSize: 15.0,
                //     color: Colors.black,
                //     decoration: TextDecoration.underline,
                //   ),
                //   ),
                // ),
                InkWell(
                  onTap: () => {Navigator.pushNamed(context, SignupSecreen.id)},
                  child: Text(
                    'انشاء حساب جديد',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
