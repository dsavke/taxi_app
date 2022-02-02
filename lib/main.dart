// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taxi_app/screens/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPage(),                //LogIn  Page of Our app
    );
  }
}
