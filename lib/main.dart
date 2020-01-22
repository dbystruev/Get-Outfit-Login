import 'package:flutter/material.dart';
import 'package:getoutfit_login/ui/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
        accentColor: Colors.teal,
        cursorColor: Colors.teal,
        textTheme: TextTheme(
          body1: TextStyle(fontFamily: 'NotoSans'),
          button: TextStyle(
            fontFamily: 'OpenSans',
          ),
          display2: TextStyle(
            color: Colors.teal,
            fontFamily: 'OpenSans',
            fontSize: 45,
          ),
          subhead: TextStyle(fontFamily: 'NotoSans'),
        ),
        primarySwatch: Colors.teal,
      ),
      title: 'GetOutf.it',
    );
  }
}
