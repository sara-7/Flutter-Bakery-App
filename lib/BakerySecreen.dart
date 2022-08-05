import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gaza_bakery/MainScreen.dart';
import 'package:gaza_bakery/YazjiSecreen.dart';

class BakerySecreen extends StatefulWidget {
  static const id = 'BakerySecreen';
  const BakerySecreen({Key? key}) : super(key: key);

  @override
  State<BakerySecreen> createState() => _BakerySecreenState();
}

class _BakerySecreenState extends State<BakerySecreen> {
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
          //backgroundColor: Colors.white,
          title: Text(
            'المخابز',
            style: TextStyle(color: Colors.brown),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,

          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            //onPressed: () {},
            onPressed: () => setState(() {
              Navigator.pushNamed(context, MainScreen.id);
              //str = mycontroller.text;
            }),
          ),

          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.grey,
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 15.0),
            getFoodItem('شركة مخابز العائلات', 'assets/images/aila.png',
                'www.families-bakeries.com', 4),
            SizedBox(height: 15.0),
            getFoodItem('مجموعة مخابز اليازجي', 'assets/images/yaz.png',
                'www.families-bakeries.com', 4),
            SizedBox(height: 15.0),
            getFoodItem('مخبز الدهشان للقرشلة والكعك',
                'assets/images/dhshan.png', 'www.families-bakeries.com', 4),
            SizedBox(height: 15.0),
            getFoodItem('مخبز القلعة', 'assets/images/qalaa.png',
                'www.families-bakeries.com', 4),
            SizedBox(height: 15.0),
            getFoodItem('مخبز الشنطي', 'assets/images/shnty.png',
                'www.families-bakeries.com', 4),
            SizedBox(height: 15.0),
            getFoodItem('مخبز الخولي', 'assets/images/koli.png',
                'www.families-bakeries.com', 4),
            SizedBox(height: 15.0),
            getFoodItem('مخبز عجور', 'assets/images/ajor.png',
                'www.families-bakeries.com', 4),
          ],
        ),
      ),
    );
  }

  getFoodItem(String dishName, String imgPath, String site, int rating) {
    return Card(
      margin: EdgeInsets.only(right: 10, left: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 7.0,
      child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, YazjiSecreen.id);
          },

          //child: Column(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover)),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(height: 10.0),
                  Text(
                    dishName,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: <Widget>[
                      getRatedStar(rating, 1),
                      getRatedStar(rating, 2),
                      getRatedStar(rating, 3),
                      getRatedStar(rating, 4),
                      getRatedStar(rating, 5),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    width: MediaQuery.of(context).size.width - 130.0,
                    child: Text(
                      site,
                      style: TextStyle(fontSize: 14.0, color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 10.0),
                ],
              )
            ],
          )),
    );
  }

  getRatedStar(int rating, int index) {
    if (index <= rating) {
      return Icon(Icons.star, color: Colors.yellow[600]);
    } else {
      return Icon(Icons.star, color: Colors.grey);
    }
  }
}
