import 'package:flutter/material.dart';
import 'package:new_ui/screen/login_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildScrollView(),
          buildLoginText(),
        ],
      ),
    );
  }

  Widget buildScrollView() => SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10),
          child: Container(
              child: Column(
            children: <Widget>[
              buildImage(),
              buildTextField('Full Name'),
              buildText('E_mail'),
              buildPasswordButton('Password'),
              buildSingUp(),
              buildCanterText(),
              buildFaceButton(),
              buildGoogleButton(),
              buildRichText(),
              buildPolicyText('Privacy Policy'),
            ],
          )),
        ),
      );

  Widget buildImage() => Padding(
        padding: const EdgeInsets.fromLTRB(0, 64, 0, 32),
        child: ClipPath(
          child: Image(
            height: 128,
            image: AssetImage('assets/images/flutter.png'),
          ),
        ),
      );
  Widget buildTextField(String name) => Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          child: TextField(
            decoration: InputDecoration(
              hintText: name,
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
  Widget buildText(String hintText) => Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          child: TextField(
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
        padding: const EdgeInsets.all(4),
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
  Widget buildSingUp() => Padding(
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
          child: Text('Sign Up'),
          onPressed: () {},
        ),
      );
  Widget buildCanterText() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '________________Or________________',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      );
  Widget buildFaceButton() => Padding(
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
  Widget buildRichText() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          text: TextSpan(
            text: 'By Singing up you accept the',
            style: TextStyle(fontSize: 15, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: ' Terms of Service',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              TextSpan(text: '  and'),
            ],
          ),
        ),
      );
  Widget buildPolicyText(String policy) => Text(
        policy,
        style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold),
      );
  Widget buildLoginText() => GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(20),
            child: RichText(
              text: TextSpan(
                text: 'Already have an account? ',
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
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
