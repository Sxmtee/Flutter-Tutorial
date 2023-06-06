import 'package:flutter/material.dart';

class SimpleDesign extends StatelessWidget {
  const SimpleDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home), //left hand side
        title: const Text(
          "App Bar",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.segment),
        ], // right hand side
        elevation: 20,
        shadowColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          //container gives you the child property
          //columns and rows give you the children property
          padding: const EdgeInsets.all(50),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
                child: const Center(
                  child: Text("1"),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
