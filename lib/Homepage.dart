import 'package:flutter/material.dart';
import 'package:testpro/Twopage.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _controller1=TextEditingController();
  TextEditingController _controller2=TextEditingController();
  void _login(){
    setState(() {
      _controller2.text=_controller1.text;
    });
  }
  void _Navigate(){
    Navigator.push(context,
        MaterialPageRoute(builder:(context)=>Twopage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('home page'),
        ),
        body:Column(
          children: [
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Enter your name',
                  hintText: 'Atheer',
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )
              ),
              controller: _controller1,
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                  labelText: 'your name',

                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )
              ),
              controller: _controller2,
              readOnly: true,
            ),
            ElevatedButton(onPressed: (){
              _login();
            }, child:Text('Submit')),
            ElevatedButton(onPressed:(){
              _Navigate();
            },
                child:Text('Move')),
          ],
        ) ,

    );
  }
}
