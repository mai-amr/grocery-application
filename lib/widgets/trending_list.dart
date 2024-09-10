import 'package:flutter/material.dart';
import 'trending_item.dart';
import 'package:grocery_1/api_service.dart'; 
class TrendingList extends StatefulWidget {
  const TrendingList({super.key});

  @override
  _TrendingListState createState() => _TrendingListState();
}

class _TrendingListState extends State<TrendingList> {
  List<dynamic> _products = [];

  @override
  void initState() {
    super.initState();
    _fetchGroceries();
  }

  Future<void> _fetchGroceries() async {
    ProductService productService = ProductService();
    try {
      Map<String, List<dynamic>> categorizedProducts =
          await productService.fetchAndCategorizeProducts();
      
      List<dynamic> allProducts = [];
      categorizedProducts.forEach((key, value) {
        allProducts.addAll(value);
      });

      setState(() {
        _products = allProducts; 
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    
    if (_products.isEmpty) {
      return const SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator()),
      );
    }

    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        childAspectRatio: 0.7, 
        crossAxisSpacing: 10.0, 
        mainAxisSpacing: 10.0, 
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var product = _products[index];
          return TrendingItem(
            imagePath: product['images'][0], 
            name: product['title'],          
            price: '\$${product['price']}',  
          );
        },
        childCount: _products.length, 
      ),
    );
  }
}

