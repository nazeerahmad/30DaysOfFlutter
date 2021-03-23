import "package:flutter/material.dart";
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
// day 11 studied contraints and widget tree
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(30, (index) => CatalogModel.items[0]);
    int days = 30;
    String dev = "Development";
    return Scaffold(
        appBar: AppBar(
          title: Text('Catalog App'),
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            },
            itemCount: dummyList.length,
          ),
        ));
  }
}
