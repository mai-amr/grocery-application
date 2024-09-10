import 'package:flutter/material.dart';
import 'package:grocery_1/onboarding/on_boarding.dart';


void main() {
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Introduction_Screen(),
    );
  }
}

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     const HomePage(),
//      CategoryScreen(),
//     const ProfilePage(),
//   ];
  

//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _currentIndex==0?homeAppBar():categoriesAppBar(),
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomAppBar(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               IconButton(
//                 icon: Icon(
//                   Icons.home,
//                   color: _currentIndex == 0 ? Colors.orange : Colors.grey,
//                 ),
//                 onPressed: () {
//                   _onItemTapped(0);
//                 },
//               ),
//               IconButton(
//                 icon: Icon(
//                   Icons.swap_horiz,
//                   color: _currentIndex == 1 ? Colors.orange : Colors.grey,
//                 ),
//                 onPressed: () {
//                   _onItemTapped(1);
//                 },
//               ),
//               GestureDetector(
//                 onTap: () {
//                   _onItemTapped(2);
//                 },
//                 child: CircleAvatar(
//                   radius: 17,
//                   backgroundColor:  _currentIndex==2?Colors.orange:Colors.white,
//                   child: const CircleAvatar(
//                     radius: 15,
//                     backgroundImage: AssetImage('assets/image.png'), // ضع مسار صورتك هنا
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   AppBar categoriesAppBar() {
//     return AppBar(
//       backgroundColor: Colors.white,
//       title: const Text(
//         'Categories',
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       centerTitle: true,
//     );
//   }
//   AppBar homeAppBar() {
//     return AppBar(
//       backgroundColor: Colors.white,
//       title: const Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Good Morning',
//                 style: TextStyle(fontSize: 16, color: Colors.grey),
//               ),
//               Text(
//                 'Romana',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ],
//           ),
//           Icon(Icons.notifications, color: Colors.black),
//         ],
//       ),
//     );
//   }
// }





// class SwapPage extends StatelessWidget {
//   const SwapPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: GridView.count(
//           crossAxisCount: 2,
//           crossAxisSpacing: 16.0,
//           mainAxisSpacing: 16.0,
//           children: const [
//             CategoryCard(
//               icon: Icons.local_pizza,
//               title: 'Fruits',
//               items: '87 items',
//             ),
//             CategoryCard(
//               icon: Icons.local_grocery_store,
//               title: 'Vegetables',
//               items: '87 items',
//             ),
//             CategoryCard(
//               icon: Icons.grain,
//               title: 'Mushroom',
//               items: '87 items',
//             ),
//             CategoryCard(
//               icon: Icons.local_drink,
//               title: 'Dairy',
//               items: '87 items',
//             ),
//             CategoryCard(
//               icon: Icons.breakfast_dining,
//               title: 'Oats',
//               items: '87 items',
//             ),
//             CategoryCard(
//               icon: Icons.bakery_dining,
//               title: 'Bread',
//               items: '87 items',
//             ),
//             CategoryCard(
//               icon: Icons.rice_bowl,
//               title: 'Rice',
//               items: '27 items',
//             ),
//             CategoryCard(
//               icon: Icons.egg,
//               title: 'Egg',
//               items: '120 items',
//             ),
//           ],
//         ),
//       ),
//     );
//   }


// }

// class CategoryCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String items;

//   const CategoryCard({
//     super.key,
//     required this.icon,
//     required this.title,
//     required this.items,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             spreadRadius: 2,
//             blurRadius: 5,
//           ),
//         ],
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             icon,
//             size: 50,
//             color: Colors.orange,
//           ),
//           const SizedBox(height: 8),
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//               color: Colors.orange,
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             items,
//             style: const TextStyle(
//               fontSize: 14,
//               color: Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




