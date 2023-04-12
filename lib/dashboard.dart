import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          height: 500,
          width: 500,
          child: const Column(
            children: [
              Row(
                children: [
                  Text("UserName:"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("PLACEHOLDER")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Password:"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("PLACEHOLDER")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Email:"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("PLACEHOLDER")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
