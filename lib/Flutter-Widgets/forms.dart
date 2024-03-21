import 'package:carltutorial/Flutter-Widgets/dashboard.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  bool? isChecked = false;
  int? gender = 0;
  GlobalKey<FormState> authKey = GlobalKey<FormState>();
  bool showPassword = false;

  List<String> qualifications = ["HND", "OND", "DEGREE", "MASTERS", "PHD"];
  var dropdown = "HND";

  final TextEditingController usernameCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();

  @override
  void dispose() {
    usernameCtrl.dispose();
    passwordCtrl.dispose();
    emailCtrl.dispose();
    super.dispose();
  }

  void switchPassword() {
    showPassword = !showPassword;
    setState(() {}); //notifies the state of a change...
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        height: size.height,
        width: size.width,
        child: Form(
          key: authKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: DropdownButton(
                    items: qualifications.map((qualifications) {
                      return DropdownMenuItem(
                        value: qualifications,
                        child: Text(qualifications),
                      );
                    }).toList(),
                    isExpanded: true,
                    onChanged: (value) {
                      setState(() {
                        dropdown = value!;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: usernameCtrl,
                  decoration: InputDecoration(
                    label: const Text("Username"),
                    hintText: "Enter Your Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.blue.shade200,
                    prefixIcon: const Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter a Username";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordCtrl,
                  obscureText: !showPassword,
                  decoration: InputDecoration(
                    label: const Text("Password"),
                    hintText: "Enter Your Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.brown.shade200,
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        switchPassword();
                      },
                      icon: showPassword
                          ? const Icon(Icons.remove_red_eye)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                  validator: (value) {
                    if (value!.length < 6) {
                      return "Please Enter a longer Password";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailCtrl,
                  decoration: InputDecoration(
                    label: const Text("Email"),
                    hintText: "Enter Your Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.brown.shade200,
                    prefixIcon: const Icon(Icons.mail),
                  ),
                  validator: (value) {
                    var emailValid = EmailValidator.validate(value!);
                    if (!emailValid) {
                      return "Invalid E-mail Address";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLength: 100,
                  maxLines: 8,
                  decoration: InputDecoration(
                    label: const Text("About"),
                    hintText: "About Yourself",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.brown.shade200,
                    prefixIcon: const Icon(Icons.edit),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Male")
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Female")
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Radio(
                      value: 3,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Others")
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "I Agree to the Terms and Conditions",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    if (authKey.currentState!.validate()) {
                      authKey.currentState!.save();
                      Map<String, dynamic> users = {};
                      users["username"] = usernameCtrl.text;
                      users["password"] = passwordCtrl.text;
                      users["email"] = emailCtrl.text;
                      if (gender == 1) {
                        users["gender"] = "Male";
                      } else {
                        users["gender"] = "Female";
                      }

                      var route = MaterialPageRoute(
                        builder: (context) => DashBoard(
                          userDetails: users,
                        ),
                      );
                      Navigator.push(context, route);
                    }
                  },
                  color: Colors.brown.shade200,
                  minWidth: 100,
                  shape: const StadiumBorder(),
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
