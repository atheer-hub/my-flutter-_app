import 'package:flutter/material.dart';
import 'package:utensils/Detailpage.dart';
import 'models/Produtitem.dart';
class Electroicpage extends StatelessWidget {
  Electroicpage({super.key});

  final List<Product> products = [
    Product(
      image: 'images2/img1.jpg',
      name: 'Air Fryer',
      description: 'Air Fryer – Hot-air fryer for crispy meals with less oil.',
      price: 550,
    ),
    Product(
      image: 'images2/img2.jpg',
      name: 'Immersion (Stick) Blender + Attachments',
      description: 'Immersion (Stick) Blender + Attachments – Hand-held wand blender for soups/sauces.',
      price: 290,
    ),
    Product(
      image: 'images2/img3.jpg',
      name: 'Hand Mixer / Batters & Whisks Set',
      description: 'Hand Mixer with Whisks – Compact hand-held mixer and attachments.',
      price:250,
    ), Product(
      image: 'images2/img4.jpg',
      name: 'Rice Cooker / Multi-Cooker Pot',
      description: 'Rice Cooker / Multi-Cooker Pot – For cooking rice and steaming..',
      price: 350,
    ),
    Product(
      image: 'images2/img6.jpg',
      name: 'Blender / Food Processor (Countertop)',
      description: 'Blender / Food Processor – Larger blender for smoothies and food prep.',
      price: 450,
    ),
    Product(
      image: 'images2/img7.jpg',
      name: 'Mixer (Stand or Hand Mixer)',
      description: 'Mixer (Stand/Hand) – Electric mixer for baking tasks.',
      price: 600,
    ),
    Product(
      image: 'images2/img8.jpg',
      name: 'Sandwich / Panini Grill Maker',
      description: 'Sandwich/ Panini Grill Maker – Electric grill for sandwiches.',
      price: 450,
    ),
    Product(
      image: 'images2/img9.jpg',
      name: 'Mini Donut Maker',
      description: 'Mini Donut Maker – Small appliance for making mini donuts',
      price: 240,
    ),
    Product(
      image: 'images2/img10.jpg',
      name: 'Toaster (2-slice)',
      description: 'Toaster (2-slice) – Compact bread toaster.',
      price: 150,
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
