import 'package:flutter/material.dart';
import 'package:new_ui/screen/login_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
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
              buildFormtextfild(),
              buildCanterText(),
              buildFaceButton(),
              buildGoogleButton(),
              buildRichText(),
              buildPolicyText('Privacy Policy'),
            ],
          )),
        ),
      );
  Widget buildFormtextfild() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'User Name',
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                fillColor: Color(0xFFDCE3EC),
                filled: true,
                border: InputBorder.none,
              ),
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                  return 'Please enter User Name';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'E-mail',
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                fillColor: Color(0xFFDCE3EC),
                filled: true,
                border: InputBorder.none,
              ),
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                        .hasMatch(value)) {
                  return 'Invalid E-mail';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
          ),
          Padding(
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
              child: Text('Sing Up'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage() => Padding(
        padding: const EdgeInsets.fromLTRB(0, 64, 0, 32),
        child: ClipPath(
          child: Image(
            height: 128,
            image: AssetImage('assets/images/flutter.png'),
          ),
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
