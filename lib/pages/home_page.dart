import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Saif";
    return Scaffold(
      appBar: AppBar(
        title: Text("Universe App"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to my $days planet $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
