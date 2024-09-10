import 'package:flutter/material.dart';
import 'package:grocery_1/login/Register.dart';
import 'package:grocery_1/login/login.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction_Screen extends StatefulWidget {
  @override
  State<Introduction_Screen> createState() => _Introduction_ScreenState();
}

class _Introduction_ScreenState extends State<Introduction_Screen> {
  int currentPage = 0;

  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Welcome to Fresh Fruits",
      body: "Grocery application",
      image: Center(
        child: Image.asset('assets/Screenshot 2024-09-07 174827.png',
            height: 175.0),
      ),
      decoration: const PageDecoration(
        pageColor: Color(0xfffefefe),
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16.0),
      ),
    ),
    PageViewModel(
      title: "We provide best quality Fruits to your family",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
      image: Center(
        child: Image.asset('assets/Screenshot 2024-09-07 174827.png',
            height: 175.0),
      ),
      decoration: const PageDecoration(
        pageColor: Color(0xfffefefe),
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16.0),
      ),
    ),
    PageViewModel(
      
      title: "Fast and responsibly delivery by our courier",
      body:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
      image: Center(
        child: Image.asset('assets/del.png', height: 175.0,),
      ),
      decoration: const PageDecoration(
        pageColor: Color(0xfffefefe),
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16.0),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        onDone: () {
          
        },
        onSkip: () {
        },
        
        next: const Icon(Icons.arrow_forward),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Colors.grey,
          activeSize: Size(22.0, 10.0),
          activeColor: Colors.green,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        onChange: (index) {
          setState(() {
            currentPage = index;
          });
        },
        showNextButton: false,
        showDoneButton: false,
        globalFooter: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              currentPage == pages.length - 1
                  ? Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Register()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 85, vertical: 17),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              "CREATE AN ACCOUNT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )),
                        const SizedBox(height: 16),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 150, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: const BorderSide(color: Colors.black),
                              ),
                            ),
                            child: const Text(
                              "LOGIN",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )),
                      ],
                    )
                  :const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Introduction_Screen(),
  ));
}
