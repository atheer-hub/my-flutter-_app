import 'package:flutter/material.dart';
import 'package:utensils/Orderpage.dart';
import 'package:utensils/models/Cartmaneger.dart';


class Cartpage extends StatefulWidget {
// المنتج الذي تم إضافته

  @override
  State<Cartpage> createState() => _CartpageState();
}
class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shopping Cart")

      ),
      body: CartManager.items.isEmpty
          ? Center(child: Text("Your cart is empty"))
          : ListView.builder(
        itemCount: CartManager.items.length,
        itemBuilder: (context, index) {
          final item = CartManager.items[index];
          return ListTile(
            leading: Image.asset(item.image, width:50, height: 50),
            title: Text(item.name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      CartManager.remove(index);
                    });
                  },
                ),

                IconButton(
                  icon: Icon(Icons.remove, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      CartManager.decrease(index);
                    });
                  },
                ),

                Text(
                  item.quantity.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),


                IconButton(
                  icon: Icon(Icons.add, color: Colors.green),
                  onPressed: () {
                    setState(() {
                      CartManager.increase(index);
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        color: Colors.grey[200],
        child:SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          children: [
            Text(
                "Total: ${CartManager.totalPrice().toStringAsFixed(2)}SR",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
            ),
            SizedBox(width: 25,),
            ElevatedButton(onPressed: () {
              if (CartManager.items.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('add aproduct first!'),));
              }
              else {

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Orderpage()));
              }
            },

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF34A6C7),),
                child: Text('Complete the order',style: TextStyle(color: Colors.white),))
          ],
        ),)
        )
    );
  }
}
