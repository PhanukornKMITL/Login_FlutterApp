import 'package:flutter/material.dart';
import 'package:login_app/Register/register_page.dart';
import 'package:login_app/login_page.dart';

import 'Profile/profile.dart';


void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      routes: {
        "/":(context) => LoginPage(),
        "/profile":(context) => Profile(),
        "/register":(context) => Register(),
      },
      initialRoute: "/",
    );
  }
}
