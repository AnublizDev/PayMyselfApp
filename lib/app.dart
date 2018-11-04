import 'package:flutter/material.dart';

class PayMySelfApp extends StatefulWidget {
  @override
  _PayMySelfAppState createState() => _PayMySelfAppState();
}

class _PayMySelfAppState extends State<PayMySelfApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Myself',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
        accentColor: Colors.cyan[600],
        fontFamily: 'Kanit',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pay Myself'),
        ),
      ),
      // onGenerateRoute: _getRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

// Route<dynamic> _getRoute(RouteSettings settings) {
//   if (settings.name != '/login') {
//     return null;
//   }
//   return MaterialPageRoute<void>(
//     settings: settings,
//     builder: (BuildContext context) => LoginPage(),
//     fullscreenDialog: true,
//   );
// }
