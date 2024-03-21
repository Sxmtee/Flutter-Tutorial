import 'package:carltutorial/Flutter-Widgets/usermodel.dart';
import 'package:flutter/material.dart';

class ApiDashBoard extends StatefulWidget {
  final User display;
  const ApiDashBoard({super.key, required this.display});

  @override
  State<ApiDashBoard> createState() => _ApiDashBoardState();
}

class _ApiDashBoardState extends State<ApiDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.display.firstName),
      ),
    );
  }
}
