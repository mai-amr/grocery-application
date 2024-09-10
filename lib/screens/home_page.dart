import 'package:flutter/material.dart';
import 'package:grocery_1/widgets/category_list.dart';
import 'package:grocery_1/widgets/recomended_list.dart';
import 'package:grocery_1/widgets/trending_list.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            const RecomendedList(),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            const SliverToBoxAdapter(
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 5)),
            SliverToBoxAdapter(child: CategoryList()),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            const SliverToBoxAdapter(
              child: Text(
                'Trending Deals',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
              TrendingList(),
          ],
        ),
      ),
    );
  }
}
