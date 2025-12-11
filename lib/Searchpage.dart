import 'package:flutter/material.dart';
class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search,size: 30,color: Colors.grey,),
          SizedBox(height: 20,),
          Text('البحث',style: TextStyle(fontSize: 24,color: Colors.grey),)
        ],
      ),
    );
  }
}
