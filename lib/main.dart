import 'package:e_commerce_app/screens/home.dart';
import 'package:e_commerce_app/screens/login.dart';
import 'package:e_commerce_app/screens/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flower App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
