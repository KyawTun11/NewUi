import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:new_ui/screen/singup.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [buildScrollView(), buildSingUpAccount()],
    ));
  }

  Widget buildScrollView() => SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(35),
          child: Container(
              child: Column(
            children: <Widget>[
              buildImage(),
              buildText('E_mail'),
              buildPasswordButton('Password'),
              buildLogin(),
              buildForgot(),
              buildOrText('_______________Or_______________'),
              buildFaceUpButton(),
              buildGoogleButton(),
            ],
          )),
        ),
      );

  Widget buildImage() => Padding(
        padding: const EdgeInsets.fromLTRB(0, 64, 0, 32),
        child: ClipPath(
          child: Image(
            width: double.infinity,
            image: AssetImage('assets/images/flutter.png'),
          ),
        ),
      );
  Widget buildText(String hintText) => Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
              fillColor: Color(0xFFDCE3EC),
              filled: true,
              border: InputBorder.none,
            ),
          ),
        ),
      );
  Widget buildPasswordButton(String password) => Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: password,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
              suffixIcon: Icon(
                Icons.visibility,
                size: 35,
              ),
              fillColor: Color(0xFFDCE3EC),
              filled: true,
              border: InputBorder.none,
            ),
          ),
        ),
      );
  Widget buildLogin() => Padding(
        padding: const EdgeInsets.all(4),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            minimumSize: Size(double.infinity, 46),
            primary: Colors.blue,
            onPrimary: Colors.white,
          ),
          child: Text('Login'),
          onPressed: () {},
        ),
      );
  Widget buildForgot() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
          ),
        ),
      );
  Widget buildOrText(String orText) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          orText,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  Widget buildFaceUpButton() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF4a6ea8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            minimumSize: Size(double.infinity, 45),
          ),
          icon: Icon(Icons.facebook, size: 32),
          label: Text('Sing Up with Facebook'),
          onPressed: () {},
          onLongPress: () {},
        ),
      );
  Widget buildGoogleButton() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            minimumSize: Size(double.infinity, 46),
            backgroundColor: Colors.white,
            primary: Colors.blue,
            side: BorderSide(color: Colors.blue),
          ),
          icon: Image.asset(
            'assets/images/Flat.png',
            height: 24,
            alignment: Alignment.topLeft,
          ),
          label: Text('Sing up with Google'),
          onPressed: () {},
          onLongPress: () {},
        ),
      );
  Widget buildSingUpAccount() => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SingUp(),
            ),
          );
        },
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(20),
            child: RichText(
              text: TextSpan(
                text: 'Don`t have an account? ',
                style: TextStyle(
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sing UP',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
