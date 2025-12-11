import 'package:flutter/material.dart';
import 'models/Star_rating.dart';
import 'package:utensils/Detailpage.dart';
import 'models/Produtitem.dart';

class KitchenwarePage extends StatelessWidget {
  KitchenwarePage({super.key});

  final List<Product> products = [
    Product(
      image: 'images/plate.jpeg',
      name: 'Bowl Set',
     description: 'Sky blue ceramic bowl, ideal for serving soups, cereals, or salads.',
      price: 300,
    ),
    Product(
      image: 'images/boxes.jpeg',
      name: 'Glass Storage Jars',
      description: 'Durable glass storage jar with airtight lid.',
      price: 150,
    ),
    Product(
      image: 'images/cups1.jpeg',
      name: 'Cups Set',
      description: 'Elegant pink coffee cups with saucers.',
      price: 230,
    ),
    Product(
      image: 'images/img1.jpg',
      name: 'Oriental Hospitality Set',
      description: 'A hospitality set include cups,tray, and serving.',
      price: 500,
    ), Product(
      image: 'images/img2.jpg',
      name: 'Juice Serving Set',
      description: 'A set include a pitcher,glass cups, and wooden tray.',
      price: 250,
    ), Product(
      image: 'images/img3.jpg',
      name: 'Luxury Pink Cookware Set',
      description: 'A cmplete cookware set in shandes of pink.',
      price: 1000,
    ), Product(
      image: 'images/img4.jpg',
      name: 'Striped Coffee Cup Set',
      description: 'Ceramic coffee cup with striped design .',
      price: 90,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final item = products[index];

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detailpage(item: item),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 2,
                )
              ],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    item.image,
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        item.description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),

                      const SizedBox(height: 8),

                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
