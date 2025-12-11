import 'package:bottomnav/Accountpage.dart';
import 'package:bottomnav/Hompage.dart';
import 'package:bottomnav/Index.dart';
import 'package:bottomnav/Searchpage.dart';
import 'package:bottomnav/Settingpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>const Index(),
       '/Homepage':(context)=>const Hompage(),
        '/Searchpage':(context)=>const Searchpage(),
        '/Settinpage':(context)=>const Settingpage(),
        '/Accountpage':(context)=>const Accountpage(),

      }
    );
  }
}
