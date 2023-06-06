import 'package:flutter/material.dart';

class BlogPost extends StatelessWidget {
  const BlogPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLOGPOST"),
      ),
      body: ListView(
        children: [
          newsCard(),
          newsCard(),
          newsCard(),
          newsCard(),
          newsCard(),
        ],
      ),
    );
  }

  Widget newsCard() {
    return Container(
      margin: const EdgeInsets.all(50),
      height: 350,
      color: Colors.red,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Somtee"),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: const Text("Thursday"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/tetris plate.png"),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.share),
                  Icon(Icons.favorite),
                  Icon(Icons.thumb_down_sharp),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
