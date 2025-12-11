import 'package:flutter/material.dart';
import 'package:utensils/Electroicpage.dart';
import 'package:utensils/Homepage.dart';
import 'Kitchenwarepage.dart';
import 'Cartpage.dart';
import 'models/Cartmaneger.dart';
class Indexpage extends StatefulWidget {

  const Indexpage({super.key});

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  int _bottomNavBar=0;
  final List<Widget> _pages=[
    Homepage(),
    KitchenwarePage(),
    Electroicpage(),
    Cartpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xFF0B6193),
          title: Text('Kitchen Tools',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
          leading: Icon(Icons.local_dining_sharp,color: Colors.white,),
          actions: [ Builder(builder: (context){
            return IconButton(onPressed: (){
              Scaffold.of(context).openEndDrawer();
            }, icon:Icon(Icons.shopping_cart,color:Colors.white,),
              color: Color(0xFF0B6197),
            );
          })
          ],
        ),

      endDrawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Text(
                "Shopping Cart",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: CartManager.items.length,
                itemBuilder: (context, index) {
                  final item = CartManager.items[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Row(
                      children: [
                        Image.asset(
                          item.image,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4),
                              Text(
                                item.description,
                                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.remove,color: Colors.red,),
                                      onPressed: () {
                                        setState(() {
                                          if (item.quantity > 1) {
                                            item.quantity--;
                                          }
                                        });
                                      }
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    item.quantity.toString(),
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 8),

                                  IconButton(
                                    icon: Icon(Icons.add,color: Colors.green,),
                                    onPressed: () {
                                      setState(() {
                                        item.quantity++;
                                      });
                                    },
                                  ),
                                  SizedBox(width: 12),
                                  // زر الحذف
                                  IconButton(
                                    icon: Icon(Icons.delete, color: Colors.red),
                                    onPressed: () {
                                      setState(() {
                                        CartManager.items.removeAt(index);
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
        body: _pages[_bottomNavBar],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF0B6193),
          type: BottomNavigationBarType.fixed,
          currentIndex: _bottomNavBar,onTap: (index){
        setState(() {
          _bottomNavBar=index;
        });
      },
          unselectedItemColor: Color(0x8EE1EFFF),
          selectedItemColor: Colors.white,
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.local_dining),label: 'kitchen Tools'),
            BottomNavigationBarItem(icon: Icon(Icons.electrical_services_sharp),label: 'Electroic Devices'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'cart'),
          ]
      ),
    );
  }
}
