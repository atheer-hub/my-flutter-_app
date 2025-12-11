import 'package:flutter/material.dart';
class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings,size: 30,color: Colors.grey,),
          SizedBox(height: 20,),
          Text('الاعدادات',style: TextStyle(fontSize: 24,color: Colors.grey),)
        ],
      ),
    );
  }
}
