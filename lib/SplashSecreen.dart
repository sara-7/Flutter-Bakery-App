import 'package:flutter/material.dart';
import 'package:gaza_bakery/LoginSecreen.dart';
// import 'package:gaza_bakery/MainScreen.dart';

class SplashSecreen extends StatefulWidget {
  static const id = 'SplashSecreen';
  const SplashSecreen({Key? key}) : super(key: key);

  @override
  State<SplashSecreen> createState() => _SplashSecreenState();
}

class _SplashSecreenState extends State<SplashSecreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, LoginSecreen.id);
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar: AppBar(title: Text("AppBar title"), ),
        body: Container(
          // color: b,
          // height: double.infinity,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //1

                Container(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/welcom.png"),
                ),
                SizedBox(width: 5.0),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    top: 15.0,
                    bottom: 15.0,
                  ),
                  child: Text(
                    'مخابز غزة الهاشم ',
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
                    'مخابز غزة الهاشم تضم افضل مخابز قطاع غزة\n  وتوفر للزبون منتوجات كل مخبز على حدة\n  وتقدم خدمة التوصيل',
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
