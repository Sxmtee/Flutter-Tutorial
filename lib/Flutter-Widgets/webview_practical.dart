import 'package:flutter/material.dart';
import 'package:regexpattern/regexpattern.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPractical extends StatefulWidget {
  const WebViewPractical({super.key});

  @override
  State<WebViewPractical> createState() => _WebViewPracticalState();
}

class _WebViewPracticalState extends State<WebViewPractical> {
  TextEditingController searchCtrl = TextEditingController();
  bool isSearching = false;
  String? initialUrl;

  void onSearch(String searchLink) {
    setState(() {
      isSearching = true;
    });

    bool mainUrl = searchLink.isUrl();
    if (mainUrl) {
      if (!searchLink.startsWith("http")) {
        searchLink = "https://$searchLink";
      }
      setState(() {
        initialUrl = searchLink;
      });
    } else {
      showSnackBar("Invalid Url");
      setState(() {
        isSearching = false;
      });
    }
  }

  showSnackBar(String content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content),
      ),
    );
  }

  late WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            isSearching = true;
          });
        },
        onPageFinished: (url) {
          setState(() {
            isSearching = false;
          });
        },
      ),
    )
    ..loadRequest(Uri.parse(initialUrl!));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              onSearch(searchCtrl.text);
            },
            icon: const Icon(Icons.search),
          ),
        ],
        title: Column(
          children: [
            TextFormField(
              controller: searchCtrl,
              keyboardType: TextInputType.url,
              decoration: const InputDecoration(
                hintText: "Enter Url",
                border: InputBorder.none,
              ),
              onFieldSubmitted: (value) {
                onSearch(value);
              },
            ),
            Visibility(
              visible: isSearching,
              child: const LinearProgressIndicator(),
            ),
          ],
        ),
      ),
      body: Container(
        child: initialUrl == null
            ? const Center(
                child: Text("Welcome to Somtee's Browser"),
              )
            : WebViewWidget(controller: controller),
      ),
    );
  }
}
