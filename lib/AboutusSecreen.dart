import 'package:flutter/material.dart';
import 'package:gaza_bakery/MainScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AboutusSecreen extends StatefulWidget {
  static const id = 'AboutusSecreen';
  const AboutusSecreen({Key? key}) : super(key: key);

  @override
  State<AboutusSecreen> createState() => _AboutusSecreenState();
}

class _AboutusSecreenState extends State<AboutusSecreen> {
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
            'نبذة عنا',
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
        body: ListView(
          padding: EdgeInsets.only(right: 10.0),
          //alignment: Alignment.bottomRight,
          //margin: EdgeInsets.all(5.0),

          children: <Widget>[
            //1
            Container(
              margin: EdgeInsets.fromLTRB(8.0, 70.0, 0.0, 8.0),
              child: Image.asset("assets/images/yazji.png"),
            ),
            //2

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Text(
                  'مخابز غزة الهاشم',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.brown),
                ),
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              'يعد تطبيق مخابز غزة هاشم حلقة وصل بين المخابز المحلية\nو المواطنين فهو يتيح لهم طلب منتجات بجميع\nأصنافها بسهولة وسرعة قائقة عن طريق خدمة التوصيل\nالتوصيل.',
              // textDirection: TextDirection.rtl,
              // textAlign: TextAlign.right,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                  color: Colors.black),
            ),
            Divider(
              color: Colors.grey,
              height: 5.0,
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Text(
                  'مميزات التطبيق:',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.brown),
                ),
              ),
            ),
            SizedBox(height: 3.0),
            Row(
              children: const [
                Icon(
                  Icons.check_circle,
                  color: Colors.amber,
                ),
                Text(
                  'سهولة إنشاء حساب في التطبيق و تسجيل الدخول.',
                  // textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.0),
            Row(
              children: const [
                Icon(
                  Icons.check_circle,
                  color: Colors.amber,
                ),
                Text(
                  'سهولة الاستخدام و التنقل فى التطبيق.',
                  // textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.0),
            Row(
              children: const [
                Icon(
                  Icons.check_circle,
                  color: Colors.amber,
                ),
                Text(
                  'لتسهيل الوصول للمنتجات المرغوب بها بأسرع وقت يمنح \nالعملاء ميزات بحث متقدمة داخله',
                  // textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.0),
            Row(
              children: const [
                Icon(
                  Icons.check_circle,
                  color: Colors.amber,
                ),
                Text(
                  'وجود التقويم وجدولة التسليم.',
                  // textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.0),
            Divider(
              color: Colors.grey,
              height: 5.0,
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Text(
                  'الهدف العام:',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.brown),
                ),
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              'إنشاء تطبيق الكتروني يتيح لمواطني قطاع غزة الحصول\nعلى المخبوزات بجميع أصناقها و انواعها على مدار\nالساعة بسهولة و يسر وهم في بيوتهم',
              // textAlign: TextAlign.right,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                  color: Colors.black),
            ),
            Container(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
