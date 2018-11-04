import 'package:flutter/material.dart';
// import 'package:PayMySelf/routing.dart';

import 'components/home/home.dart';
import 'components/login/login.dart';

void main() {
  // Routes();
  runApp(
    MaterialApp(
      title: 'Pay Myself',
      initialRoute: '/login',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
        accentColor: Colors.teal[600],
        // fontFamily: 'Kanit',
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
