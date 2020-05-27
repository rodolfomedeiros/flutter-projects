import 'package:flutter/material.dart';
import 'package:navigate_route_tutorial/models/forms/SearchForm.dart';

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
        SecondPage.routeName: (context) => SecondPage()
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
          onPressed: () => Navigator.pushNamed(context, SecondPage.routeName,
              arguments: SearchForm("Teste")),
          child: Text("Launch Second Screen"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  static const String routeName = "/second";

  @override
  Widget build(BuildContext context) {
    final SearchForm searchForm = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () => Navigator.pop(context),
        child: Text(searchForm.query),
      )),
    );
  }
}
