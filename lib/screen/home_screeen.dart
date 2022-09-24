import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeSceen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://blog.parkjw.in';
  HomeSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Park Jangwon Blog'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                if (controller == null) {
                  return;
                }
                controller!.loadUrl(homeUrl);
              },
              icon: Icon(Icons.home),
            )
          ],
        ),
        body: Center(
          child: WebView(
            onWebViewCreated: (WebViewController controller) {
              this.controller = controller;
            },
            initialUrl: homeUrl,
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}
