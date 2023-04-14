import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<Map> names = [
    {"name": "Somto", "grade": "Pass"},
    {"name": "Carl", "grade": "Pass"},
    {"name": "Victor", "grade": "Pass"},
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewBuilder"),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 20,
              shape: const StadiumBorder(),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(
                    names[index]["name"].substring(0, 1),
                  ),
                ),
                title: Text(
                  names[index]["name"],
                ),
                subtitle: Text(
                  names[index]["grade"],
                ),
                trailing: IconButton(
                  onPressed: () {
                    names.removeAt(index);
                    setState(() {});
                  },
                  icon: const Icon(Icons.cancel),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
