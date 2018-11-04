import 'package:flutter/material.dart';

import 'package:PayMySelf/components/login/login.dart';
import 'package:PayMySelf/components/home/home.dart';

class Routes {
  Routes() {
    runApp(
      MaterialApp(
        title: 'Pay Mayself',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.lightBlue,
          brightness: Brightness.light,
        ),
        home: LoginPage(),
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/login':
              return MyCustomRoute(
                builder: (_) => LoginPage(),
                settings: settings,
              );

            case '/home':
              return MyCustomRoute(
                builder: (_) => HomePage(),
                settings: settings,
              );
          }
        },
      ),
    );
  }
}

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    return FadeTransition(opacity: animation, child: child);
  }
}
