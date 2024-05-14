import 'package:carltutorial/Flutter-Widgets/alert_dialog.dart';
import 'package:carltutorial/Flutter-Widgets/api_fetch.dart';
import 'package:carltutorial/Flutter-Widgets/api_post.dart';
import 'package:carltutorial/Flutter-Widgets/blog_post.dart';
import 'package:carltutorial/Flutter-Widgets/bottomnavclass.dart';
import 'package:carltutorial/Flutter-Widgets/carousel_class.dart';
import 'package:carltutorial/Flutter-Widgets/forms.dart';
import 'package:carltutorial/Flutter-Widgets/listview_builder.dart';
import 'package:carltutorial/Flutter-Widgets/modelapi.dart';
import 'package:carltutorial/Flutter-Widgets/shared_preference.dart';
import 'package:carltutorial/Flutter-Widgets/simple_design.dart';
import 'package:carltutorial/Flutter-Widgets/splashscreen.dart';
import 'package:carltutorial/Flutter-Widgets/tabbed_view.dart';
import 'package:carltutorial/Flutter-Widgets/user_preference.dart';
import 'package:carltutorial/Flutter-Widgets/webview_class.dart';
import 'package:carltutorial/Flutter-Widgets/webview_practical.dart';
import 'package:carltutorial/Sqflite-ToDo/db_helper.dart';
import 'package:carltutorial/Sqflite-ToDo/list.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SimplePreferences.init();
  await DataBaseHelper.instance.database;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carl Tutorial"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(30),
          width: double.infinity,
          child: Column(
            children: [
              //for simple design
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const SimpleDesign(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Simple Design"),
              ),
              const SizedBox(
                height: 10,
              ),
              //for blogpost
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const BlogPost(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Blog Post"),
              ),
              const SizedBox(
                height: 10,
              ),
              //forms
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const Forms(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Forms"),
              ),
              const SizedBox(
                height: 10,
              ),
              //ListViewBuilder
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const ListViewBuilder(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("ListViewBuilder"),
              ),
              const SizedBox(
                height: 10,
              ),
              //for Alertdialog
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const NotifDialog(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Alert Dialog"),
              ),
              const SizedBox(
                height: 10,
              ),
              //TabbedViewClass
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const TabbedViewClass(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Tabbed View"),
              ),
              const SizedBox(
                height: 10,
              ),
              //WebViewClass
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const WebViewClass(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Web View Class"),
              ),
              const SizedBox(
                height: 10,
              ),
              //WebViewPractical
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const WebViewPractical(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Web View Practical"),
              ),
              const SizedBox(
                height: 10,
              ),
              //Carousel Slider
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const CarouselClass(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Carousel Class"),
              ),
              const SizedBox(
                height: 10,
              ),
              //bottomnav
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const BottomNavClass(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Bottom Nav Class"),
              ),
              const SizedBox(
                height: 10,
              ),
              //Splashscreen
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const SplashScreen(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Splashscreen class"),
              ),
              const SizedBox(
                height: 10,
              ),
              //ApiFetch
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const ApiFetch(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("API Fetch"),
              ),
              const SizedBox(
                height: 10,
              ),
              //ApiPost
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const ApiPost(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("API Post"),
              ),
              const SizedBox(
                height: 10,
              ),
              //ModelApi
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const ModelApi(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Model Api"),
              ),
              const SizedBox(
                height: 10,
              ),
              //SharedPreference
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const UserPreference(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Shared Preference"),
              ),
              const SizedBox(
                height: 10,
              ),
              //Sqflite-ToDo
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const ListScreen(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Sqflite-ToDo"),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
