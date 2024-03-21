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
            fontStyle: FontStyle.italic,
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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          padding: const EdgeInsets.all(50),
          child: Column(
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
                height: 50,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 50,
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
