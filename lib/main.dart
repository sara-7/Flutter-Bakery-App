import 'package:flutter/material.dart';
import 'package:gaza_bakery/AboutusSecreen.dart';
import 'package:gaza_bakery/BakerySecreen.dart';
import 'package:gaza_bakery/LoginSecreen.dart';
import 'package:gaza_bakery/MainScreen.dart';
import 'package:gaza_bakery/OrderSecreen.dart';
import 'package:gaza_bakery/PointSecreen.dart';
import 'package:gaza_bakery/SignupSecreen.dart';
import 'package:gaza_bakery/SupportSecreen.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gaza_bakery/YazjiSecreen.dart';

import 'SplashSecreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: SplashSecreen.id,
      routes: {
        SplashSecreen.id: (context) => SplashSecreen(),

        MainScreen.id: (context) => MainScreen(),
        LoginSecreen.id: (context) => LoginSecreen(),
        BakerySecreen.id: (context) => BakerySecreen(),
        PointSecreen.id: (context) => PointSecreen(),
        OrderSecreen.id: (context) => OrderSecreen(),
        SupportSecreen.id: (context) => SupportSecreen(),
        AboutusSecreen.id: (context) => AboutusSecreen(),
        SignupSecreen.id: (context) => SignupSecreen(),
        YazjiSecreen.id: (context) => YazjiSecreen(),
        // AboutusSecreen.id: (context) => AboutusSecreen(),
        // SignupSecreen.id: (context) => SignupSecreen(),
      },
      home: Scaffold(
          appBar: AppBar(
        title: Text("Drawer widget"),
      )),
    );
  }
}
