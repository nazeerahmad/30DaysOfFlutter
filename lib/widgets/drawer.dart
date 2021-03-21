import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final String imageUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrk_tnyOAPhp79S2b5YRCySwM_xYIHTsGJy9pOJ--Nbe70eTZq1uD0Y_dIjDsNLQYaIr0&usqp=CAU";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Nazeer Ahmad"),
                accountEmail: Text("nazeerahmad876@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.money,
                color: Colors.white,
              ),
              title: Text(
                "Wallet",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.category,
                color: Colors.white,
              ),
              title: Text(
                "Cotegories",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
