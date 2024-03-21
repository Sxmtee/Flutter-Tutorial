import 'package:carltutorial/Sqflite-ToDo/add.dart';
import 'package:carltutorial/Sqflite-ToDo/model.dart';
import 'package:carltutorial/Sqflite-ToDo/userdb_helper.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  late UserDBHelper users;
  late Future<List<UserModel>> todo;

  // goback() {
  //   var route = MaterialPageRoute(
  //     builder: (context) => const Home(),
  //   );
  //   Navigator.push(context, route);
  // }

  @override
  void initState() {
    users = UserDBHelper();
    todo = users.getUsers();
    super.initState();
  }

  Future<void> onRefresh() async {
    setState(() {
      todo = users.getUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // goback();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("SQFLite ToDo"),
        ),
        body: FutureBuilder(
          future: todo,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("ERROR: ${snapshot.error}"),
              );
            } else if (!snapshot.hasData) {
              return const Center(
                child: Text("NO DATA"),
              );
            } else {
              final items = snapshot.data;

              return RefreshIndicator(
                onRefresh: onRefresh,
                child: ListView.builder(
                  itemCount: items!.length,
                  itemBuilder: (context, index) {
                    final user = items[index];

                    return Dismissible(
                      key: ValueKey<int?>(user.id),
                      direction: DismissDirection.startToEnd,
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: const Icon(Icons.delete_forever),
                      ),
                      onDismissed: (direction) async {
                        await users.deleteUser((user.id)!);
                        setState(() {});
                      },
                      child: Card(
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(8.0),
                          title: Text((user.username)!),
                          subtitle: Text((user.description)!),
                        ),
                      ),
                    );
                  },
                ),
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            var route =
                MaterialPageRoute(builder: (context) => const AddScreen());
            Navigator.push(context, route);
          },
          backgroundColor: Colors.deepOrange,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
