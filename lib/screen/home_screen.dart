import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              ClipPath(
                child: Image(
                  height: MediaQuery.of(context).size.height / 2,
                  width: double.infinity,
                  image: AssetImage('assets/images/head.ico'),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.topCenter,
                  child: GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 30.0,
                      child: Text(
                        'Discover Upcoming Events Near You',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    'Sing Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 20.0,
                      child: Text(
                        'Skip For Now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
