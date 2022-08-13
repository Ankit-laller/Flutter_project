import 'package:flutter/material.dart';
import 'package:flutter_project/Widget/drawer.dart';
import 'package:flutter_project/utils/model.dart';

import '../Widget/ItemWidget.dart';

class homepage extends StatelessWidget {
  @override
  var name = "Ankit";
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            // itemCount: CatalogModel.items.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                // item: CatalogModel.items[index],
                item: dummyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
