import 'package:flutter/material.dart';

void main() {
  runApp(NavigateApp());
}

class NavigateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigate Route Tutorial",
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      routes: {
        '/': (context) => FirstPage(),
        '/second': (context) => SecondPage()
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.pushNamed(context, '/second'),
          child: Text("Launch Second Screen"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () => Navigator.pop(context),
        child: Text("Go Back!"),
      )),
    );
  }
}
