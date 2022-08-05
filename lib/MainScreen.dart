// import 'package:bakery_app/DetailsSecreen.dart';
// import 'package:bakery_app/LoginSecreen.dart';
import 'package:flutter/material.dart';
import 'package:gaza_bakery/AboutusSecreen.dart';
import 'package:gaza_bakery/BakerySecreen.dart';
import 'package:gaza_bakery/OrderSecreen.dart';
import 'package:gaza_bakery/PointSecreen.dart';
import 'package:gaza_bakery/SupportSecreen.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainScreen extends StatefulWidget {
  static const id = 'MainScreen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<String> imageList = [
    'assets/images/yazji.png',
    'assets/images/yazji.png',
    'assets/images/yazji.png'
  ];
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
            "الرئيسية",
            style: TextStyle(color: Colors.brown),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,

          // leading: IconButton(
          //   icon: Icon(
          //     Icons.menu,
          //     color: Colors.grey,
          //   ),
          //   //onPressed: () {},
          //   onPressed: () => setState(() {
          //     Scaffold.of(context).openDrawer();
          //     //Navigator.pushNamed(context, LoginSecreen.id);
          //     //str = mycontroller.text;
          //   }),
          // ),

          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.grey,
            ),
          ],
        ),
        drawer: Drawer(
          child:
              ListView(padding: EdgeInsets.only(right: 20, top: 10), children: [
            Container(
              height: 20.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                          image: AssetImage('assets/images/qalaa.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(height: 20.0),
                    Text(
                      'صهيب نصر الدين خلف',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      '00972595725136',
                      style: TextStyle(fontSize: 18.0, color: Colors.brown),
                    ),
                    SizedBox(height: 10.0),
                  ],
                )
              ],
            ),
            Container(
              height: 20.0,
            ),
            Divider(
              color: Colors.grey,
              height: 10.0,
            ),
            // UserAccountsDrawerHeader(
            //   accountName: Text('صهيب نصر الدين خلف'),
            //   accountEmail: Text('00972595725136'),
            //   currentAccountPicture: CircleAvatar(
            //       backgroundImage:
            //           NetworkImage('https://picsum.photos/250?image=9')),
            // ),
            Container(
              height: 20.0,
            ),
            InkWell(
              onTap: () => {Navigator.pushNamed(context, BakerySecreen.id)},
              child: Row(
                children: [
                  Icon(
                    Icons.account_balance_rounded,
                    color: Colors.amber,
                  ),
                  Text('    المخابز'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () => {Navigator.pushNamed(context, PointSecreen.id)},
              child: Row(
                children: [
                  Icon(
                    Icons.auto_awesome,
                    color: Colors.amber,
                  ),
                  Text('    نقاطي'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () => {},
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.amber,
                  ),
                  Text('    سلة المشتريات'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () => {},
              child: Row(
                children: [
                  Icon(
                    Icons.airport_shuttle,
                    color: Colors.amber,
                  ),
                  Text('    ديليفري'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () => {Navigator.pushNamed(context, OrderSecreen.id)},
              child: Row(
                children: [
                  Icon(
                    Icons.cake,
                    color: Colors.amber,
                  ),
                  Text('    تتبع الطلبات'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () => {},
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.amber,
                  ),
                  Text('    المفضلة'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () => {},
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.amber,
                  ),
                  Text('    حسابي'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () => {Navigator.pushNamed(context, SupportSecreen.id)},
              child: Row(
                children: [
                  Icon(
                    Icons.build_rounded,
                    color: Colors.amber,
                  ),
                  Text('    الدعم الفني'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () => {Navigator.pushNamed(context, AboutusSecreen.id)},
              child: Row(
                children: [
                  Icon(
                    Icons.description,
                    color: Colors.amber,
                  ),
                  Text('    نبذة عنا'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () => {},
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: Colors.amber,
                  ),
                  Text('    تسجيل خروج'),
                ],
              ),
            ),
            SizedBox(height: 20.0),

            // _CustomListTile(Icons.account_balance_rounded, '    المخابز','BakerySecreen.id'),
            // Divider(color: Colors.grey,height: 5.0,),
            // _CustomListTile(Icons.account_balance_rounded, '    نقاطي',
            //     'Navigator.pushNamed(context, BakerySecreen.id'),
            // Divider(
            //   color: Colors.grey,
            //   height: 5.0,
            // ),
            // _CustomListTile(Icons.account_balance_rounded, '    سلة المشتريات',
            //     'BakerySecreen.id'),
            // Divider(
            //   color: Colors.grey,
            //   height: 5.0,
            // ),
            // _CustomListTile(Icons.account_balance_rounded, '    ديليفري',
            //     'BakerySecreen.id'),
            // Divider(
            //   color: Colors.grey,
            //   height: 5.0,
            // ),
            // _CustomListTile(Icons.account_balance_rounded, '    تتبع الطلبات',
            //     'BakerySecreen.id'),
            // Divider(
            //   color: Colors.grey,
            //   height: 5.0,
            // ),
            // _CustomListTile(Icons.account_balance_rounded, '    المفضلة',
            //     'BakerySecreen.id'),
            // Divider(
            //   color: Colors.grey,
            //   height: 5.0,
            // ),
            // _CustomListTile(
            //     Icons.account_balance_rounded, '    حسابي', 'BakerySecreen.id'),
            // Divider(
            //   color: Colors.grey,
            //   height: 5.0,
            // ),
            // _CustomListTile(Icons.account_balance_rounded, '    الدعم الفني',
            //     'BakerySecreen.id'),
            // Divider(
            //   color: Colors.grey,
            //   height: 5.0,
            // ),
            // _CustomListTile(Icons.account_balance_rounded, '    نبذة عنا',
            //     'BakerySecreen.id'),
            // Divider(
            //   color: Colors.grey,
            //   height: 5.0,
            // ),
            // _CustomListTile(Icons.account_balance_rounded, '    تسجيل خروج',
            //     'BakerySecreen.id'),
            // Divider(
            //   color: Colors.grey,
            //   height: 5.0,
            // ),
          ]),
        ),
        body: ListView(
          //padding: EdgeInsets.only(right: 8.0),
          shrinkWrap: true,
          children: <Widget>[
            //1
            Center(
              child: CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                ),
                items: imageList
                    .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              // Image.network(
                              //   e,
                              //   width: 1050,
                              //   height: 350,
                              //   fit: BoxFit.cover,
                              // )
                              Image(
                                image: AssetImage(
                                  e,
                                ),
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
            SizedBox(height: 10.0),
            //2
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
            Container(
              height: 10,
            ),
            //3
            Row(
              children: const [
                SizedBox(width: 5.0),
                Expanded(
                  child: Text(
                    'احدث المنتجات',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'عرض الكل',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 10,
            ),
            //4
            Container(
              padding: EdgeInsets.only(top: 5.0, left: 15.0),
              height: 170.0,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCardhorz('assets/images/b1.png', 'خبز قمح', '₪50'),
                  SizedBox(width: 10.0),
                  _buildCardhorz('assets/images/b2.png', 'خبز قمح', '₪40'),
                  SizedBox(width: 10.0),
                  _buildCardhorz('assets/images/b3.png', 'خبز قمح', '₪10'),
                  SizedBox(width: 10.0),
                  _buildCardhorz('assets/images/b4.png', 'خبز قمح', '₪30'),
                  SizedBox(width: 10.0),
                  _buildCardhorz('assets/images/b5.png', 'خبز قمح', '₪10'),
                  SizedBox(width: 10.0),
                  _buildCardhorz('assets/images/b6.png', 'خبز قمح', '₪50'),
                  SizedBox(width: 10.0),
                  _buildCardhorz('assets/images/b7.png', 'خبز قمح', '₪20'),
                ],
              ),
            ),
            Container(
              height: 10,
            ),
            //5
            Row(
              children: const [
                SizedBox(width: 5.0),
                Expanded(
                  child: Text(
                    'المنتجات الاكثر طلبا',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'عرض الكل',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 10,
            ),
            //5
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
                // _buildCard(Image.asset("assets/images/b2.png"), 'خبز', '10', 2),
                // _buildCard(Image.asset("assets/images/b3.png"), 'كعك', '30', 3),
                // _buildCard(Image.asset("assets/images/b4.png"), 'قمح', '50', 4),
                // _buildCard(Image.asset("assets/images/b5.png"), 'قمح', '20', 5),
                // _buildCard(Image.asset("assets/images/b6.png"), 'خبز', '10', 6),
                // _buildCard(Image.asset("assets/images/b7.png"), 'خبز', '10', 7),
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
            SizedBox(height: 12.0),
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
            ? EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
            : EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0));
  }

  Widget _CustomListTile(IconData icon, String name, String ontap) {
    return InkWell(
      onTap: () => {ontap},
      child: Row(
        children: [
          Icon(icon),
          Text(name),
        ],
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

  Widget _buildCardhorz(String img, String name, String price) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 7.0,
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Image.asset(
                img,
                height: 75.0,
                width: 130.0,
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                alignment: Alignment.topRight,
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 15,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.brown,
                    ),
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      price,
                      style: TextStyle(
                        color: Color.fromARGB(255, 97, 96, 95),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
