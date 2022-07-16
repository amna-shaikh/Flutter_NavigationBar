import 'package:flutter/material.dart';
import 'package:flutter_navigation/Project/About.dart';
import 'package:flutter_navigation/Project/Images.dart';

import 'Home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  Widget? mybody ;
  List<Widget> body = [
    Home(),
    About(),
    Images(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: mybody,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
            BottomNavigationBarItem(
                icon: Icon(Icons.image_outlined), label: 'Images'),
          ],
        ),
      ),
    );
  }
}
