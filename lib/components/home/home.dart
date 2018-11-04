import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pay Myself'),
      ),
      body: Center(
        child: MaterialButton(
          child: Text('Sign out'),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          color: Colors.orange,
        ),
      ),
    );
  }
}
