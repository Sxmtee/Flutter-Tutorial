import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewClass extends StatefulWidget {
  const WebViewClass({super.key});

  @override
  State<WebViewClass> createState() => _WebViewClassState();
}

class _WebViewClassState extends State<WebViewClass> {
  WebViewController webcontroller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onPageStarted: (url) {
          print("$url is loading");
        },
      ),
    )
    ..loadRequest(Uri.parse('https://google.com'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WebView Class"),
      ),
      body: WebViewWidget(
        controller: webcontroller,
      ),
    );
  }
}
