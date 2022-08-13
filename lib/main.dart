import 'package:flutter/material.dart';
import 'package:flutter_project/Widget/Mytheme.dart';
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
      theme: MyTheme.lightTheme(context),
      // home: homepage(),
      initialRoute: MyRoutes.homeroute,
      routes: {
        // "/": (context) => LoginPage(),
        MyRoutes.homeroute: (context) => homepage(),
        MyRoutes.logingroute: (context) => LoginPage()
      },
    );
  }
}
