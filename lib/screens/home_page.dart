import "package:flutter/material.dart";
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String dev = "Development";
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter $dev"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
