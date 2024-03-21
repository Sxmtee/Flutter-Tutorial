import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<Map<String, dynamic>> names = [
    {"name": "Somto", "grade": "Pass"},
    {"name": "Carl", "grade": "Pass"},
    {"name": "Victor", "grade": "Pass"},
  ];

  final GlobalKey<FormState> authKey = GlobalKey<FormState>();
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController gradeCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewBuilder"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: authKey,
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  final students = names[index];

                  return Card(
                    elevation: 20,
                    shape: const StadiumBorder(),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          students["name"].substring(0, 1),
                        ),
                      ),
                      title: Text(
                        students["name"],
                      ),
                      subtitle: Text(
                        students["grade"],
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
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: nameCtrl,
                decoration: InputDecoration(
                  label: const Text("Name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: gradeCtrl,
                decoration: InputDecoration(
                  label: const Text("Grade"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  if (authKey.currentState!.validate()) {
                    authKey.currentState!.save();
                    Map<String, dynamic> userdetails = {};
                    userdetails["name"] = nameCtrl.text;
                    userdetails["grade"] = gradeCtrl.text;

                    names.add(userdetails);
                    nameCtrl.clear();
                    gradeCtrl.clear();
                    setState(() {});
                  }
                },
                color: Colors.brown,
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
