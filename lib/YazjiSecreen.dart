import 'package:flutter/material.dart';
import 'package:gaza_bakery/BakerySecreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class YazjiSecreen extends StatefulWidget {
  static const id = 'YazjiSecreen';
  const YazjiSecreen({Key? key}) : super(key: key);

  @override
  State<YazjiSecreen> createState() => _YazjiSecreenState();
}

class _YazjiSecreenState extends State<YazjiSecreen> {
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
            'مخبوزات اليازجي',
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
              Navigator.pushNamed(context, BakerySecreen.id);
              //str = mycontroller.text;
            }),
          ),
        ),
        body: ListView(
          //padding: EdgeInsets.only(right: 8.0),
          shrinkWrap: true,
          children: <Widget>[
            //SizedBox(height: 10.0),
            //1
            Container(
              margin: EdgeInsets.fromLTRB(8.0, 10.0, 0.0, 8.0),
              child: Image.asset("assets/images/aboutus.png"),
            ),
            //2
            SizedBox(height: 3.0),
            //SizedBox(width: 10.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  'مجموعة مخابز اليازجي في قطاع غزة لجميع انواع المخبوزات\nوالمعجنات والكيك',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Colors.black),
                ),
              ),
            ),
            //3
            SizedBox(height: 3.0),
            Row(
              children: [
                //1
                _buildCard2(Icons.account_balance_rounded, '8  فروع'),
                Container(
                  width: 5,
                ),
                _buildCard2(Icons.account_balance_rounded, '100 موظف'),
                Container(
                  width: 5,
                ),
                _buildCard2(Icons.account_balance_rounded, '4.5 التقييم'),
              ],
            ),
            SizedBox(height: 5.0),
            //4
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  'بيانات التواصل في الفروع',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.brown),
                ),
              ),
            ),
            SizedBox(height: 5.0),
            //5
            Row(
              children: [
                //1
                _buildCard3('فرع تل    الهوا', '111111'),
                Container(
                  width: 5,
                ),
                _buildCard3('فرع الشجاعية', '222222'),
                Container(
                  width: 5,
                ),
                _buildCard3('فرع شارع يافا', '333333'),
                Container(
                  width: 5,
                ),
                _buildCard3('فرع الامن العام', '444444'),
              ],
            ),
            SizedBox(height: 5.0),
            //6
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  'الاقسام',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.brown),
                ),
              ),
            ),
            SizedBox(height: 5.0),
            //7
            Row(
              children: [
                //1
                Container(
                  width: 20,
                ),
                _buildCard4('assets/images/c1.png', 'الكل'),
                Container(
                  width: 10,
                ),
                _buildCard4('assets/images/c2.png', 'كعك'),
                Container(
                  width: 10,
                ),
                _buildCard4('assets/images/c3.png', 'فطاير'),
                Container(
                  width: 10,
                ),
                _buildCard4('assets/images/c4.png', 'حلويات'),
                Container(
                  width: 10,
                ),
                _buildCard4('assets/images/c1.png', 'خبز'),
              ],
            ),
            SizedBox(height: 5.0),

            //8
            GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 4.0,
              shrinkWrap: true,
              children: <Widget>[
                _buildCard('assets/images/b1.png', 'خبز قمح', '₪50', 1),
                _buildCard('assets/images/b2.png', 'خبز قمح', '₪40', 2),
                _buildCard('assets/images/b3.png', 'خبز قمح', '₪10', 3),
                _buildCard('assets/images/b4.png', 'خبز قمح', '₪30', 4),
                _buildCard('assets/images/b5.png', 'خبز قمح', '₪10', 5),
                _buildCard('assets/images/b6.png', 'خبز قمح', '₪50', 6),
                _buildCard('assets/images/b7.png', 'خبز قمح', '₪20', 7),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String img, String name, String status, int cardIndex) {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 7.0,
        child: Column(
          children: <Widget>[
            //SizedBox(height: 5.0),
            Stack(children: <Widget>[
              Container(
                height: 75.0,
                width: 130.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.0),
                  color: Colors.white,
                  //image: img
                  image: new DecorationImage(
                    image: AssetImage(img),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, DetailsSecreen.id);
                  },
                ),
              ),
            ]),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                color: Colors.brown,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.shopping_cart,
                  color: Colors.brown,
                ),
                Text(
                  status,
                  style: TextStyle(color: Colors.brown),
                ),
              ],
            ),
            SizedBox(height: 15.0),
          ],
        ),
        margin: cardIndex.isEven

            // ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
            // : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0));
            //EdgeInsets.fromLTRB(left, top, right, bottom)
            ? EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
            : EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0));
  }

  Widget _buildCard2(IconData icon, String name) {
    //return Card(),
    return Container(
      height: 45,
      width: 110,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        elevation: 7.0,
        child: Row(
          children: <Widget>[
            // child: Row(
            //   children: [
            Icon(
              icon,
              color: Colors.brown,
              size: 20,
            ),
            Container(
              width: 5,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard3(String name, String number) {
    //return Card(),
    return Container(
      height: 100,
      width: 80,
      // margin: EdgeInsets.symmetric(horizontal: 3),
      // padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        elevation: 7.0,
        child: Column(
          children: [
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            //Container(width: 5,),
            Text(
              number,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.brown),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard4(String img, String name) {
    //return Card(),
    return Center(
      // height: 100,
      // width: 40,
      // margin: EdgeInsets.symmetric(horizontal: 3),
      // padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          ),
          //Container(width: 5,),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.brown),
          ),
        ],
      ),
    );
  }
}
