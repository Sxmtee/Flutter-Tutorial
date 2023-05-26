import 'package:carltutorial/Flutter-Widgets/usermodel.dart';
import 'package:flutter/material.dart';

class ApiDashBoard extends StatefulWidget {
  final User user;
  const ApiDashBoard({super.key, required this.user});

  @override
  State<ApiDashBoard> createState() => _ApiDashBoardState();
}

class _ApiDashBoardState extends State<ApiDashBoard> {
  late User user;
  @override
  void initState() {
    user = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.firstName),
      ),
    );
  }
}
