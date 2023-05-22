import 'package:carltutorial/Flutter-Widgets/alert_dialog.dart';
import 'package:carltutorial/Flutter-Widgets/blog_post.dart';
import 'package:carltutorial/Flutter-Widgets/simple_design.dart';
import 'package:flutter/material.dart';

class TabbedViewClass extends StatefulWidget {
  const TabbedViewClass({super.key});

  @override
  State<TabbedViewClass> createState() => _TabbedViewClassState();
}

class _TabbedViewClassState extends State<TabbedViewClass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          elevation: 0,
          title: const Text("WHATSAPP"),
          bottom: const TabBar(
            indicatorColor: Colors.red,
            indicatorWeight: 4,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            tabs: [
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NotifDialog(),
            SimpleDesign(),
            BlogPost(),
          ],
        ),
      ),
    );
  }
}
