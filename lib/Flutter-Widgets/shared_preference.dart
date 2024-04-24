import 'package:carltutorial/Flutter-Widgets/user_preference.dart';
import 'package:flutter/material.dart';

class UserPreference extends StatefulWidget {
  const UserPreference({super.key});

  @override
  State<UserPreference> createState() => _UserPreferenceState();
}

class _UserPreferenceState extends State<UserPreference> {
  late String name;
  late int counter;

  // final preference = SimplePreferences();

  @override
  void initState() {
    name = SimplePreferences.getName();
    counter = SimplePreferences.getScore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              initialValue: name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Your Name",
              ),
              onChanged: (value) {
                name = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                //decrement button
                Text("$counter"),
                //increment button
              ],
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
      ),
    );
  }
}
