import 'package:flutter/material.dart';
import 'package:flutter_project/pages/homepage.dart';
import 'package:flutter_project/pages/login.dart';
import 'package:flutter_project/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // home: homepage(),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeroute: (context) => homepage(),
        MyRoutes.logingroute: (context) => LoginPage()
      },
    );
  }
}
