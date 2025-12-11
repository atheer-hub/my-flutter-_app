import 'package:flutter/material.dart';
class Accountpage extends StatefulWidget {
  const Accountpage({super.key});

  @override
  State<Accountpage> createState() => _AccountpageState();
}

class _AccountpageState extends State<Accountpage> {
  @override
  Widget build(BuildContext context) {
    return const  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_box,size: 30,color: Colors.grey,),
          SizedBox(height: 20,),
          Text('الحساب',style: TextStyle(fontSize: 24,color: Colors.grey),)
        ],
      ),
    );
  }
}
