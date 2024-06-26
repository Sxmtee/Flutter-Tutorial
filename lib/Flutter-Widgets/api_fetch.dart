import 'dart:convert';

import 'package:carltutorial/Flutter-Widgets/api_dashboard.dart';
import 'package:carltutorial/Flutter-Widgets/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiFetch extends StatefulWidget {
  const ApiFetch({super.key});

  @override
  State<ApiFetch> createState() => _ApiFetchState();
}

class _ApiFetchState extends State<ApiFetch> {
  Future<Map<String, dynamic>> fetchUser() async {
    Map<String, dynamic> results = {};

    var uri = Uri.parse("https://reqres.in/api/users?page=1");
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      results = data;
    }
    return results;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fetching An API"),
      ),
      body: FutureBuilder(
        future: fetchUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("ERROR"),
            );
          } else if (!snapshot.hasData) {
            return const Center(
              child: Text("NO DATA"),
            );
          } else {
            final data = snapshot.data!;

            return ListView.builder(
              shrinkWrap: true,
              itemCount: data["data"].length,
              itemBuilder: (context, index) {
                final user = data["data"][index];

                return singleUser(
                  User.fromJson(user),
                );
              },
            );
          }
        },
      ),
    );
  }

  Widget singleUser(User user) {
    return ListTile(
      onTap: () {
        var route = MaterialPageRoute(
          builder: (context) => ApiDashBoard(display: user),
        );
        Navigator.push(context, route);
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.avatar),
      ),
      title: Text(user.firstName),
      subtitle: Text(user.email),
    );
  }
}
