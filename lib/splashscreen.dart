import 'package:flutter/material.dart';
import 'Loginpage.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => LoginPage()),
      );
    });}
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff54ACBF),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_dining,size: 100,color:Colors.black)

          ],
        ),
      ),
    );
  }
}
