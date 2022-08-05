import 'package:flutter/material.dart';
import 'package:gaza_bakery/MainScreen.dart';
import 'package:gaza_bakery/LoginSecreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class SignupSecreen extends StatefulWidget {
  static const id = 'SignupSecreen';
  const SignupSecreen({Key? key}) : super(key: key);

  @override
  State<SignupSecreen> createState() => _SignupSecreenState();
}

class _SignupSecreenState extends State<SignupSecreen> {
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
      color: Colors.grey,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.grey.shade100,
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // backgroundColor: Colors.white,
          title: Text(
            "انشاء حساب جديد",
            style: TextStyle(color: Colors.brown),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          //actions: <Widget>[
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.brown,
            ),
            //onPressed: () {},
            onPressed: () => setState(() {
              Navigator.pushNamed(context, LoginSecreen.id);
              //str = mycontroller.text;
            }),
          ),
          //],
        ),
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
                  margin: EdgeInsets.fromLTRB(8.0, 30.0, 8.0,
                      8.0), //حدود لكل الكونتينبر يعني لكل الي بداخلها
                  child: Image.asset("assets/images/sigiup.png"),
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
                      hintText: 'اسم المستخدم',
                      //hintStyle: TextStyle(fontSize: 20,),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                SizedBox(height: 5.0),
                //3
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
                SizedBox(height: 5.0),
                //4
                Container(
                  margin: EdgeInsets.only(
                    right: 8.0,
                    left: 8.0,
                  ), //حدود لكل الكونتينبر يعني لكل الي بداخلها
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
                //5
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
                      hintText: 'الهاتف',
                      //hintStyle: TextStyle(fontSize: 20,),
                    ),
                    keyboardType: TextInputType.phone,
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
                            'انشاء حساب',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
