import 'package:flutter/material.dart';
import 'package:gaza_bakery/MainScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class PointSecreen extends StatefulWidget {
  static const id = 'PointSecreen';
  const PointSecreen({Key? key}) : super(key: key);

  @override
  State<PointSecreen> createState() => _PointSecreenState();
}

class _PointSecreenState extends State<PointSecreen> {
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
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.grey.shade100,
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // backgroundColor: Colors.white,
          title: Text(
            "نقاطي",
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
              Navigator.pushNamed(context, MainScreen.id);
              //str = mycontroller.text;
            }),
          ),
          //],
        ),
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //1
                Container(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/point.png"),
                ),
                SizedBox(width: 5.0),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    top: 15.0,
                    bottom: 15.0,
                  ),
                  child: Text(
                    'لا يوجد اي نقطة',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.brown),
                  ),
                ),
                SizedBox(width: 5.0),
                //2
                Container(
                  alignment: Alignment.center,
                  //padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'الرجاء الشراء من اجل الحصول على نقاط',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        //fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                        color: Colors.black),
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
