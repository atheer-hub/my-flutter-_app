import 'package:flutter/material.dart';
class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: [
          ListTile(
            leading: Container(
              width: 60,height: 40,
              color: Color(0xFF0D47A1),
              child: Text('Iphone',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
            ),
            title:Text('Iphone'),
            subtitle: Text('iphone is the stylist phone ever'
                'pric:1000'),
          ),
          ListTile(
            leading: Container(
              width: 60,height: 40,
              color: Color(0xFF0D47A1),

              child: Text('Pixel',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,)),
            ),
            title:Text('Pixel'),
            subtitle: Text('pixel is most featueful phone ever '
                'pric:800'),
          ),
          ListTile(
            leading: Container(
              width: 60,height: 40,
              color: Color(0xFF0D47A1),
              child: Text('Laptop',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
            ),
            title:Text('Laptop'),
            subtitle: Text('laptop is most productive developrnemt tool'
                'pric:2000'),
          ),
          ListTile(
            leading: Container(
              width: 60,height: 40,
              color: Color(0xFF0D47A1),
              child: Text('Tablet',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
            ),
            title:Text('Tablte'),
            subtitle: Text('tablte is the most useful device evre for meeting  '
                'pric:1500'),
          ),
        ]
    );
  }
}
