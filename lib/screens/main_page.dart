import 'package:flutter/material.dart';
import 'package:grocery_1/screens/categories_page.dart';
import 'package:grocery_1/screens/home_page.dart';
import 'package:grocery_1/screens/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.name});
  final String name;

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages.add(const HomePage());
    _pages.add( CategoryScreen());
    _pages.add(ProfilePage(name: widget.name));
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: [
        homeAppBar(),
        categoriesAppBar(),
        profileAppBar()
      ][_currentIndex],
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: _currentIndex == 0 ? Colors.orange : Colors.grey,
                ),
                onPressed: () {
                  _onItemTapped(0);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.swap_horiz,
                  color: _currentIndex == 1 ? Colors.orange : Colors.grey,
                ),
                onPressed: () {
                  _onItemTapped(1);
                },
              ),
              GestureDetector(
                onTap: () {
                  _onItemTapped(2);
                },
                child: CircleAvatar(
                  radius: 17,
                  backgroundColor:
                      _currentIndex == 2 ? Colors.orange : Colors.white,
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundImage:
                        AssetImage('assets/image.png'), // ضع مسار صورتك هنا
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar categoriesAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Categories',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }

  AppBar profileAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Profile',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Good Morning',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                widget.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Icon(Icons.notifications, color: Colors.black),
        ],
      ),
    );
  }
}
