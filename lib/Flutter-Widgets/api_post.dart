import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPost extends StatefulWidget {
  const ApiPost({super.key});

  @override
  State<ApiPost> createState() => _ApiPostState();
}

class _ApiPostState extends State<ApiPost> {
  var formKey = GlobalKey<FormState>();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController occupationCtrl = TextEditingController();

  void post() async {
    var date = DateTime.now().toString();

    Map<String, dynamic> details = {};
    details["name"] = nameCtrl.text;
    details["occupation"] = occupationCtrl.text;
    details["createdAt"] = date;

    var uri = Uri.parse("https://reqres.in/api/users?page=1");
    var request = await http.post(uri, body: details);

    if (request.statusCode == 201) {
      var response = jsonDecode(request.body);
      print(response);
    } else {
      print(request.statusCode);
      print("ERROR OCCURED");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Post"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                ///for name
                TextFormField(
                  controller: nameCtrl,
                  decoration: InputDecoration(
                    label: const Text("Name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Fill This Field";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),

                ///for occupation
                TextFormField(
                  controller: occupationCtrl,
                  decoration: InputDecoration(
                    label: const Text("Occupation"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Fill This Field";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      post();
                    }
                  },
                  color: Colors.blue,
                  child: const Text("Register"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
