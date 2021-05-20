import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

// material library provides us all the basic features like colours and all to build any app.  c
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  //everything in the flutter is a widget. about 90% of things are widget.
  Widget build(BuildContext context) {
    return MaterialApp(
      //here we are declaring theme of the app
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => HomePage(),
        "/Login": (context) => LoginPage()
      },
    );
  }
}
