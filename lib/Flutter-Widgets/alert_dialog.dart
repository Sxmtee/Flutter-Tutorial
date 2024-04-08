import 'package:flutter/material.dart';

class NotifDialog extends StatelessWidget {
  const NotifDialog({super.key});

  exitApp(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: const Text("EXIT APP"),
      content: const Text(
        "You are about to leave the app",
        textAlign: TextAlign.center,
      ),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.blue,
          child: const Text("Cancel"),
        ),
        MaterialButton(
          onPressed: () {},
          color: Colors.red,
          child: const Text("Exit"),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (context) => alertDialog,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            exitApp(context);
          },
          color: Colors.amber,
          child: const Text("Tap To Exit"),
        ),
      ),
    );
  }
}
