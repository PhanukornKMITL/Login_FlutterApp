import 'package:flutter/material.dart';
import 'package:login_app/Register/register_page.dart';
import 'package:login_app/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Profile/profile.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
