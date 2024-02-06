import 'package:flutter/material.dart';
import 'package:food/pages/flash.dart';
import 'package:food/pages/home.dart';
import 'package:food/pages/login.dart';
import 'package:food/pages/register.dart';
import 'package:food/pages/show.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'English',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        // other theme properties go here
      ),
      routes: {
        '/': (context) => Builder(
              builder: (BuildContext context) => Show(),
            ),
        // '/register': (context) => Builder(
        //       builder: (BuildContext context) => Register(),
        //     ),
        // '/login': (context) => Builder(
        //       builder: (BuildContext context) => Login(),
        //     ),
        // '/': (context) => Builder(
        //       builder: (BuildContext context) => Flash(),
        //     ),
        // '/home': (context) => Builder(
        //       builder: (BuildContext context) => Home(),
        //     ),
      },
    ),
  );
}
