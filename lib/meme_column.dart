import 'package:flutter/material.dart';

class MemeColumn extends StatelessWidget {
  const MemeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Columns And Rows"),
        centerTitle: true,
        leading: Icon(Icons.home),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.cyanAccent,
        child: const Column(
          children: [
            Icon(
              Icons.sports_soccer,
              size: 100,
            ),
            Icon(
              Icons.car_rental_outlined,
              size: 100,
            )
          ],
        ),
      ),
    );
  }
}
