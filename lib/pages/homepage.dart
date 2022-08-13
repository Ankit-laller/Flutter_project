import 'package:flutter/material.dart';
import 'package:flutter_project/Widget/drawer.dart';

class homepage extends StatelessWidget {
  @override
  var name = "Ankit";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to the Flutter demo by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
