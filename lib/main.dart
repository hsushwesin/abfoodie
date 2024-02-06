import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/flash.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/register.dart';
import 'package:flutter_application_1/pages/show.dart';

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
              builder: (BuildContext context) => const Show(),
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
