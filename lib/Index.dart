
import 'package:bottomnav/Accountpage.dart';
import 'package:bottomnav/Hompage.dart';
import 'package:bottomnav/Searchpage.dart';
import 'package:bottomnav/Settingpage.dart';


import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _bottomNavbar=0;
  List<Widget>_pages=[
    Hompage(),
    Searchpage(),
    Settingpage(),
    Accountpage(),
  ];
  String _gettitle(int index){
    switch (index){
      case 0:
        return 'الصفحة الرئيسية';
      case 1:
        return 'صفحة البحث';
      case 2:
        return 'صفحة الاعدادات';
      case 3:
        return 'صفحة الحساب';
      default :
        return 'data';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(title:Text(_gettitle(_bottomNavbar),style: TextStyle(color:Colors.white),),
     backgroundColor:Colors.cyan,
     ),
      body:
      IndexedStack(
      index: _bottomNavbar,
      children:_pages ,
    ),
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: _bottomNavbar,
    onTap: (index){
    Navigator.pushNamed(context,  '/Settinpage' );
    },
    unselectedItemColor: Colors.grey[600],
    selectedItemColor: Colors.blue[800],
    items: [
    BottomNavigationBarItem(label: 'الرئيسية', icon: Icon(Icons.home)),
    BottomNavigationBarItem(label: 'البحث', icon: Icon(Icons.search)),
    BottomNavigationBarItem(label: 'الاعدادات', icon: Icon(Icons.settings)),
    BottomNavigationBarItem(label: 'الحساب', icon: Icon(Icons.account_box)),
    ],
    )
    );
  }
}
