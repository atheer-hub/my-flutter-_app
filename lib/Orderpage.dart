import 'package:flutter/material.dart';
import 'package:utensils/Indexpage.dart';

class Orderpage extends StatelessWidget {
  const Orderpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Status",style: TextStyle(color: Colors.white),),
        backgroundColor:Color(0xFF0B6193),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle,
                color: Color(0xFF34A6C7), size: 100),
            SizedBox(height: 15),
            Text(
              'Ordered Successfully',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Indexpage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF34A6C7),
              ),
              child: Text(
                'Home page',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
