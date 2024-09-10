import 'package:flutter/material.dart';
import 'package:grocery_1/api_service.dart';
import 'package:grocery_1/cards/cat_card_icon.dart'; // الكود المشترك

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  Map<String, List<dynamic>> _categorizedProducts = {};

  @override
  void initState() {
    super.initState();
    _fetchGroceries();
  }

  Future<void> _fetchGroceries() async {
    ProductService productService = ProductService();
    var categorizedProducts = await productService.fetchAndCategorizeProducts();
    setState(() {
      _categorizedProducts = categorizedProducts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _categorizedProducts.isEmpty
        ? Center(child: CircularProgressIndicator())
        : SizedBox(
            height: 120,
            child: GridView.count(
              crossAxisCount: 1,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(16.0),
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 5.0,
              children: _categorizedProducts.keys.map((category) {
                return buildCategoryCard(
                    context, category, _categorizedProducts[category] ?? []);
              }).toList(),
            ),
          );
  }
}