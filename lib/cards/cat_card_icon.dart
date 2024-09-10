import 'package:flutter/material.dart';
import 'package:grocery_1/screens/prod_categ.dart';

Widget buildCategoryCard(
    BuildContext context, String categoryName, List<dynamic> products) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    elevation: 4.0,
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductListScreen(
              categoryName: categoryName,
              products: products,
            ),
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            getCategoryIcon(categoryName), 
            size: 35.0,
            color: Colors.orange,
          ),
          SizedBox(height: 10.0),
          Text(
            textAlign: TextAlign.center,
            categoryName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}

IconData getCategoryIcon(String categoryName) {
  switch (categoryName) {
    case 'Fruits':
      return Icons.local_florist_rounded;
    case 'Vegetables':
      return Icons.grass;
    case 'Meat':
      return Icons.dinner_dining_outlined;
    case 'Dairy':
      return Icons.local_drink;
    case 'Beverages':
      return Icons.emoji_food_beverage_sharp;
    case 'Desserts':
      return Icons.bakery_dining;
    case 'Grains':
      return Icons.rice_bowl;
    case 'pet supplies':
      return Icons.pets;
    default:
      return Icons.fastfood;
  }
}
