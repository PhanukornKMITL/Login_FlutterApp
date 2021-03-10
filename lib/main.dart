import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: Scaffold(
        //กัน buttom overflow
        //resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: SingleChildScrollView( //ใช้เพื่อให้จอเลื่อนได้ จะได้แก้ปัญหา buttom overflow
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50.0,),
                    CircleAvatar(
                      child: Icon(Icons.map),
                      radius: 60.0,
                    ),
                  SizedBox(height: 50.0,),
                  TextFormField(
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(30.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[800]),
                        hintText: "Username",
                        fillColor: Colors.white70),
                  ),
                    SizedBox(height: 20.0,),
                    TextFormField(
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.grey[800]),
                          hintText: "Password",
                          fillColor: Colors.white70),
                          obscureText: true,
                    ),
                    SizedBox(height: 20.0,),
                    TextButton(onPressed: (){}, child: Text("Forgot Password?")),
            ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
