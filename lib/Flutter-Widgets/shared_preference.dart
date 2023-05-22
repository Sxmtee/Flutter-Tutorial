import 'package:carltutorial/Flutter-Widgets/user_preference.dart';
import 'package:flutter/material.dart';

class UserPreference extends StatefulWidget {
  const UserPreference({super.key});

  @override
  State<UserPreference> createState() => _UserPreferenceState();
}

class _UserPreferenceState extends State<UserPreference> {
  String name = "";
  int counter = 0;

  @override
  void initState() {
    name = SimplePreferences.getName();
    counter = SimplePreferences.getScore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            initialValue: name,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Your Name",
            ),
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Text("$counter"),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () async {
              await SimplePreferences.setName(name);
              await SimplePreferences.setScore(counter);
            },
            color: Colors.blue,
            child: const Text("SAVE"),
          ),
        ],
      ),
    );
  }
}
