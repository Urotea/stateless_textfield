import 'package:flutter/material.dart';
import 'package:stateless_textfield/stateless_textfield.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatelessTextField Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'StatelessTextField Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _message = "";

  void _setMessage(String str) =>
      setState(() => _message = str);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StatelessTextField(
              initialValue: _message,
              style: Theme.of(context).textTheme.headline4,
              decoration: InputDecoration(hintText: "first message field"),
              onSubmitted: _setMessage,
            ),
            StatelessTextField(
              initialValue: _message,
              style: Theme.of(context).textTheme.headline6,
              decoration: InputDecoration(hintText: "second message field"),
              onSubmitted: _setMessage,
            )
          ],
        ),
      ),
    );
  }
}
