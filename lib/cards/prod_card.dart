import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final dynamic product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 4,
      child: Stack(
        children: [
          // Product Image
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                product['images'][0], 
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay with Product Details
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0),
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product['title'], 
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "\$${product['price']}", 
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          // Favorite Icon
          Positioned(
            top: 8,
            right: 8,
            child: IconButton(
              icon: const Icon(Icons.favorite_border, color: Colors.black),
              onPressed: () {
              },
            ),
          ),
        ],
      ),
    );
  }
}