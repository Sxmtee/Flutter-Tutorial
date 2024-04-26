import 'package:flutter/material.dart';

class ContentView extends StatefulWidget {
  const ContentView({super.key});

  @override
  State<ContentView> createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  double checkAmount = 0.0;
  int numberOfPeople = 2;
  int tipPercentage = 20;
  bool amountIsFocused = false;

  final tipPercentages = [10, 15, 20, 25, 0];

  double totalPerPerson() {
    double peopleCount = numberOfPeople.toDouble() + 2;
    double tipSelection = tipPercentage.toDouble();

    double tipValue = checkAmount / 100 * tipSelection;
    double grandTotal = checkAmount + tipValue;
    double amountPerPerson = grandTotal / peopleCount;

    return amountPerPerson;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WeSplit"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: const InputDecoration(labelText: 'Amount'),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  onChanged: (value) {
                    setState(() {
                      checkAmount = double.tryParse(value) ?? 0.0;
                    });
                  },
                ),
                const SizedBox(height: 12.0),
                DropdownButtonFormField<int>(
                  value: numberOfPeople,
                  items: List.generate(99 - 2 + 1, (index) => index + 2)
                      .map((value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text('$value people'),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      numberOfPeople = value ?? 2;
                    });
                  },
                  decoration:
                      const InputDecoration(labelText: 'Number of People'),
                ),
                const SizedBox(height: 12.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('How much do you want to tip?'),
                    DropdownButton<int>(
                      value: tipPercentage,
                      items: tipPercentages.map((value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text('$value%'),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          tipPercentage = value ?? 0;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                Text(
                  'Total per person: ${totalPerPerson().toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
