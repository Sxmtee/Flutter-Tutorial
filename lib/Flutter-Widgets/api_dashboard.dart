import 'package:carltutorial/Flutter-Widgets/usermodel.dart';
import 'package:flutter/material.dart';

class ApiDashBoard extends StatelessWidget {
  final User display;
  const ApiDashBoard({super.key, required this.display});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(display.firstName),
      ),
    );
  }
}
