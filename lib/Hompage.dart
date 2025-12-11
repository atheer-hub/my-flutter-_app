import 'package:flutter/material.dart';
class Hompage extends StatefulWidget {
  const Hompage({super.key});

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

           Icon(Icons.home,size: 30,color: Colors.grey,),
          const SizedBox(height: 20,),
          const Text('الرئيسية',style: TextStyle(fontSize: 24,color: Colors.grey),),

        ],
      ),
    );
  }
}
