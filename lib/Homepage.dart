import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget _buildImage(String path) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(child: Center (
      child:  Column(
        children: [

          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/kit.jpg'),
                fit: BoxFit.fill,
              ),

            ),
          ),
          SizedBox(height: 50,),
          Container(
            color: Color(0xFFE0E0E0),
            width: double.infinity,
            height: 400,
            padding: EdgeInsets.all(10),
            child: GridView.count(
              crossAxisCount: 2,          // صفين × صفين
              crossAxisSpacing: 10,       // مسافة أفقية بين الصور
              mainAxisSpacing: 10,        // مسافة عامودية بين الصور
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),// خليه يناسب المحتوى وما يكبر الشاشة
              children: [
                _buildImage('images/download (12).jpg'),
                _buildImage('images/cup.jpeg'),
                _buildImage('images/jar.jpeg'),
                _buildImage('images/download (13).jpg'),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage('images/download (15).jpg'),
                fit: BoxFit.fill,
              ),

            ),
          ),

        ],
      ),
    ),
    ),
    );
  }
}


