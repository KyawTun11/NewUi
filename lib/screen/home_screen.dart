import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_ui/screen/singup.dart';

import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildLogoArea(),
          buildButtonsArea(),
        ],
      ),
    );
  }

  Widget buildLogoArea() => Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.all(46),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildLogoImage(),
              ),
              buildText('Discover upcoming events near you'),
            ],
          ),
        ),
      );

  Widget buildLogoImage() => Image(
        height: 128,
        image: AssetImage('assets/images/flutter.png'),
      );

  Widget buildText(String text) => Container(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 22.0,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
      );
  Widget buildSignup() => ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          minimumSize: Size(double.infinity, 46),
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        child: Text('Sign Up'),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
      );
  Widget buildButton() => OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          minimumSize: Size(double.infinity, 46),
          backgroundColor: Colors.white,
          primary: Colors.blue,
          side: BorderSide(color: Colors.blue),
        ),
        child: Text('Login'),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SingUp()));
        },
        onLongPress: () {},
      );
  Widget buildButtonsArea() => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.all(46),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildSignup(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildButton(),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  primary: Colors.blue,
                ),
                child: Text('Skip now'),
                onPressed: () {},
                onLongPress: () {},
              ),
            ],
          ),
        ),
      );
}
