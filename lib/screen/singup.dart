import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
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
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
                    'Login With Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
                    'Login With Google',
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
                  text: 'Don`t have an acount? ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sing Up',
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
