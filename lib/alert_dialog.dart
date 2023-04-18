import 'package:flutter/material.dart';

class NotifDialog extends StatefulWidget {
  const NotifDialog({super.key});

  @override
  State<NotifDialog> createState() => _NotifDialogState();
}

class _NotifDialogState extends State<NotifDialog> {
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
      // barrierDismissible: false,
      context: context,
      builder: (context) => alertDialog,
    );
  }
}
