import 'package:flutter/material.dart';
import 'package:gaza_bakery/MainScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class SupportSecreen extends StatefulWidget {
  static const id = 'SupportSecreen';
  const SupportSecreen({Key? key}) : super(key: key);

  @override
  State<SupportSecreen> createState() => _SupportSecreenState();
}

class _SupportSecreenState extends State<SupportSecreen> {
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
            "الدعم الفني",
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
                //3
                SizedBox(height: 5.0),
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
                      left: 8.0), //حدود لكل الكونتينبر يعني لكل الي بداخلها
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'الموضوع:',
                      //hintStyle: TextStyle(fontSize: 20,),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),

                SizedBox(height: 5.0),
                //5
                Container(
                  margin: EdgeInsets.only(
                      right: 8.0,
                      left: 8.0), //حدود لكل الكونتينبر يعني لكل الي بداخلها
                  child: TextField(
                    minLines: 3,
                    maxLines: 5,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'المشكلة:',
                      hintMaxLines: 5,
                      //hintStyle: TextStyle(fontSize: 20,),
                    ),
                    keyboardType: TextInputType.multiline,
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
                            'ارسال الطلب',
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
