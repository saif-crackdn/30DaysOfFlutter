import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Saif";
    return Scaffold(
      appBar: AppBar(
        //app Bar is the broad line on the top of the page.
        //backgroundColor: Colors.white,
        //elevaion is used to remove shadow.
        //elevation: 0.0,
        //iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Universe App",
          //style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to my $days planet $name"),
        ),
      ),
      //drawer is the three dots on top left of the appBar.
      drawer: MyDrawer(),
    );
  }
}
