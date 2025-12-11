import 'package:flutter/material.dart';
class Hompage extends StatefulWidget {
  const Hompage({super.key});

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  TextEditingController _controller1=TextEditingController();
  TextEditingController _controller2=TextEditingController();
  void _login(){
    setState(() {
      _controller2.text=_controller1.text;
    });
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       TextField(
 decoration: InputDecoration(
   labelText: 'Enter Your Name',
   hintText: 'Ahmed',
   border:OutlineInputBorder(
     borderRadius: BorderRadius.circular(25),
   ) 
 ),
         controller: _controller1,
       ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Your Name',
    border:OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    )
    ),
    controller: _controller2,
    readOnly:true,
            ),
      ElevatedButton(onPressed: (){ _login();}, child:Text('Submit'))
        ],
      ),
    );
  }
}
