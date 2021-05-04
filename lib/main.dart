import 'package:flutter/material.dart';
import 'package:flutter_web_intercom_sample/intercom.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Intercom Sample',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: TextButton(
          child: Text("Go to page with Intercom"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageWithIntercom()),
            );
          },
        ),
      ),
    );
  }
}

class PageWithIntercom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page with Intercom")),
      body: Intercom(
        tag: "intercom-101",
        child: Center(
          child: TextButton(
            child: Text("Go to page without Intercom"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageWithoutIntercom()),
              );
            },
          ),
        ),
      ),
    );
  }
}

class PageWithoutIntercom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page without Intercom")),
      body: Center(
        child: TextButton(
          child: Text("Go to page with Intercom"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
