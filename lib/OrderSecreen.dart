import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gaza_bakery/MainScreen.dart';

class OrderSecreen extends StatefulWidget {
  static const id = 'OrderSecreen';
  const OrderSecreen({Key? key}) : super(key: key);

  @override
  State<OrderSecreen> createState() => _OrderSecreenState();
}

class _OrderSecreenState extends State<OrderSecreen> {
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
            'الطلبات',
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
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            // Stack(
            //   children: <Widget>[
            //     Container(
            //       margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
            //       //child: Row(),

            //       decoration: BoxDecoration(
            //           color: Colors.white,
            // borderRadius: BorderRadius.circular(20.0),
            // boxShadow: [
            //   BoxShadow(blurRadius: 2.0, color: Colors.grey)
            // ]),
            //       //child: Row(),
            //     ),
            //   ],
            // ),
            Stack(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(width: 25),
                    Positioned(
                      right: 100,
                      // left: 100,
                      // top: 10,
                      child: Container(
                        height: 75.0,
                        width: 145.0,
                        //margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(blurRadius: 2.0, color: Colors.grey)
                            ]),
                        child: Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(height: 15),
                                Text('عدد الطلبات',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    )),
                                Container(height: 10),
                                Text('250',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    )),
                              ]),
                        ),
                      ),
                    ),
                    Container(width: 20),
                    Positioned(
                      right: 500,
                      left: 50,
                      child: Container(
                        height: 75.0,
                        width: 145.0,
                        //margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(blurRadius: 2.0, color: Colors.grey)
                            ]),
                        child: Column(children: [
                          Container(height: 15),
                          Text('اجمالي المبلغ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.amber,
                                fontSize: 15.0,
                              )),
                          Container(height: 10),
                          Text('1050',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.amber,
                                fontSize: 15.0,
                              )),
                        ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0),
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
                    //Navigator.pushNamed(context, DetailsSecreen.id);
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
}
