import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                //it is used to give space between widgets
                height: 25.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      onChanged: (value) {
                        //when the text changes
                        name =
                            value; //here we are giving value to the text , to show the name with the welcome.
                        //whenever u call setstate , it changes the ui. that means it calls the build method again.

                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText:
                          true, //it is used for not showing password to anyone .
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        //await means waiting
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        //container is a box, it doesn't have navigator like elevated button
                        /*but if we have to make any widgets clickable we have two ways
                        1.wrap it with the gesture detector:simple
                        2.inkwell : animated ,customi
                        */
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 40,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8)),
                      ),
                    )
                    /* ElevatedButton(
                      child: Text("Login"),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    )*/
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
