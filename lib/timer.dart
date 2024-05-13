import 'dart:async';

import 'package:flutter/material.dart';

class ImageChanger extends StatefulWidget {
  const ImageChanger({super.key});

  @override
  State<ImageChanger> createState() => _ImageChangerState();
}

class _ImageChangerState extends State<ImageChanger> {
  int currentIndex = 0;
  List<String> backgroundImages = [];

  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(seconds: 5),
      (timer) {
        setState(() {
          currentIndex = (currentIndex + 1) % backgroundImages.length;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImages[currentIndex]),
          ),
        ),
        child: const Center(
          child: Text("BACKGROUND IMAGE"),
        ),
      ),
    );
  }
}
