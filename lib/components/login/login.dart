import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  /*
  AnimationController _loginButtonController;
  var animationStatus = 0;
  @override
  void initState() {
    super.initState();
    _loginButtonController = new AnimationController(
        duration: new Duration(milliseconds: 3000), vsync: this);
  }

  @override
  void dispose() {
    _loginButtonController.dispose();
    super.dispose();
  }

  Future<Null> _playAnimation() async {
    try {
      await _loginButtonController.forward();
      await _loginButtonController.reverse();
    } on TickerCanceled {}
  }

  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          child: new AlertDialog(
            title: new Text('Are you sure?'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              new FlatButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, "/home"),
                child: new Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }
  */
  @override
  Widget build(BuildContext context) {
    // timeDilation = 0.4;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    final loginLogo = Hero(
      tag: 'loginLogo',
      child: Column(
        children: <Widget>[
          Image.network('https://via.placeholder.com/150x150'),
          SizedBox(height: 16.0),
          Text(
            'Pay Myself',
            style: Theme.of(context).textTheme.headline,
          ),
        ],
      ),
    );

    final loginEmail = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'paymyself@gmail.com',
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.orange),
        // contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
      ),
    );

    final loginPassword = TextFormField(
      autofocus: false,
      initialValue: 'password',
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.orange),
        // contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        // borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Sign in'),
          color: Colors.orange,
        ),
      ),
    );

    return Scaffold(
      body: Container(
        // decoration: new BoxDecoration(
        //   image: backgroundImage,
        // ),
        // child: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: <Color>[
        //       const Color.fromRGBO(162, 146, 199, 0.8),
        //       const Color.fromRGBO(51, 51, 63, 0.9),
        //     ],
        //     stops: [0.2, 1.0],
        //     begin: const FractionalOffset(0.0, 0.0),
        //     end: const FractionalOffset(0.0, 1.0),
        //   ),
        // ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            loginLogo,
            SizedBox(height: 120.0),
            loginEmail,
            SizedBox(height: 12.0),
            loginPassword,
            SizedBox(height: 24.0),
            loginButton,
          ],
        ),
        // ),
      ),
    );
  }
}
