import 'package:carltutorial/carousel_class.dart';
import 'package:carltutorial/forms.dart';
import 'package:carltutorial/listview_builder.dart';
import 'package:flutter/material.dart';

class BottomNavClass extends StatefulWidget {
  const BottomNavClass({super.key});

  @override
  State<BottomNavClass> createState() => _BottomNavClassState();
}

class _BottomNavClassState extends State<BottomNavClass> {
  int currentIndex = 0;
  List<Widget> items = [
    const CarouselClass(),
    const Forms(),
    const ListViewBuilder()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Bottom Nav Class"),
      ),
      body: items[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.blue,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: "Share",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
