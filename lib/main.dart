import 'package:flutter/material.dart';
import 'package:utensils/Indexpage.dart';
import 'package:utensils/Kitchenwarepage.dart';
import 'package:utensils/splashscreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Splashscreen(),
    );

  }
}
