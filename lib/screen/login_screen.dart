import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_ui/screen/singup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: <Widget>[
              ClipPath(
                child: Image(
                  height: MediaQuery.of(context).size.height / 2,
                  width: double.infinity,
                  image: AssetImage('assets/images/head.ico'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: FlatButton(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            fillColor: Colors.white,
                            hintText: 'Full Name',
                          ),
                          obscureText: true,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: FlatButton(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            fillColor: Colors.white,
                            hintText: 'Email',
                          ),
                          obscureText: true,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: FlatButton(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            fillColor: Colors.white,
                            hintText: 'Password',
                          ),
                          obscureText: true,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '....or....',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SingUp()));
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
                    'Sing Up With Facebook',
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
                    'Sing Up With Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.blue,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'By Singing up you accept the',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Terms of Service',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: '  and'),
                  ],
                ),
              ),
              Text(
                'Privacy Policy',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              RichText(
                text: TextSpan(
                  text: 'Aready have an acount? ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
