import 'package:flutter/material.dart';
import 'package:utensils/Cartpage.dart';
import 'package:utensils/models/Cartmaneger.dart';
import 'models/Produtitem.dart';
import 'models/Star_rating.dart';

class Detailpage extends StatelessWidget {
  final Product item;
  const Detailpage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item.name,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff26658C),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  item.image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                item.description,
                style: const TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 20),
              StarRating(
                rating: item.rating,
                onRatingChanged: (value) {
                },
              ),
              const SizedBox(height: 20),
              Text(
                ' price:${item.price}SR',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    CartManager.add(item);

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("The product has been added to the cart"),
                      ),
                    );

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff54ACBF),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text("Add to Cart",style: TextStyle(color: Colors.white),),
                ),
              )

            ],

          ),
        ),
      ),
    );
  }
}
