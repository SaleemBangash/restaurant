// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hotel/screens/login.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  // String _email = '';
  // String _password = '';
  bool _isObscure = false;

  Future<void> _signUp() async {
    final formState = _formKey.currentState;
    if (formState!.validate()) {
      formState.save();
      try {
        final UserCredential user = await _auth.createUserWithEmailAndPassword(
          email: _emailContoller.text.trim(),
          password: _passwordController.text.trim(),
        );
        // Handle successful sign-up
        print('User registered: ${user.user?.email}');
      } catch (e) {
        // Handle sign-up errors
        print('Sign-up error: $e');
      }
    }
  }

  void _showSuccessSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _resetFields() {
    _emailContoller.clear();
    _passwordController.clear();
  }

  @override
  void dispose() {
    _emailContoller.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      // appBar: AppBar(
      //   backgroundColor: Colors.brown,
      //   centerTitle: true,
      //   title: Text(
      //     'SignUp',
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("images/rest.jpg"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Restaurant Management System",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff21ca7d),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text("SignUp for Free",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailContoller,
                  validator: (input) {
                    if (input!.isEmpty) {
                      return 'Please enter an email';
                    }
                    return null;
                  },
                  onSaved: (input) =>
                      _emailContoller = input! as TextEditingController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail_outline_outlined,
                      color: Color(0xff21ca7d),
                    ),
                    labelText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    // filled: true,
                    // obsecureText: _isObscure,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: _isObscure,
                  validator: (input) {
                    if (input!.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  onSaved: (input) =>
                      _passwordController = input! as TextEditingController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Color(0xff21ca7d),
                    ),
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    // filled: true,
                    // obsecureText: _isObscure,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () async {
                  await Firebase.initializeApp();

                  final formState = _formKey.currentState;
                  if (formState!.validate()) {
                    formState.save();
                    try {
                      final UserCredential user =
                          await _auth.createUserWithEmailAndPassword(
                              email: _emailContoller.text.trim(),
                              password: _passwordController.text.trim());

                      // Handle successful sign-up
                      print('User registered: ${user.user?.email}');
                      _showSuccessSnackbar('Register successful!');
                      _resetFields();
                    } catch (e) {
                      // Handle sign-up errors
                      print('Sign-up error: $e');
                    }
                  }
                },
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xff21ca7d),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Text(
                        "Create Account",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Center(
                  child: RichText(
                      text: TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                          children: [
                        TextSpan(
                          text: "LogIn",
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff21ca7d)),
                        ),
                      ])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
