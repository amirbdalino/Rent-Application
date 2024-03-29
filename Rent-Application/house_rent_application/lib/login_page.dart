// ignore_for_file: prefer_const_constructors

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_textfield_validation/flutter_textfield_validation.dart';
// import 'package:house_rent_application/home/home_page.dart';
import 'package:house_rent_application/pages/Reset_Password.dart';
import 'package:house_rent_application/pages/registration.dart';
import 'package:house_rent_application/utils/utils_method.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
    
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final formKey = GlobalKey<FormState>();
  // bool enableLoginButton = false;
  // String? email;
  // String? password;
  // Text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    // loading circle
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      print('signed in');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          'Succesfully logged in',
          // style: ,
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.blueAccent,
        duration: Duration(seconds: 2),
      ));
    } on FirebaseAuthException catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          'Enter your email or password correctly',
          style: TextStyle(fontSize: 16, color: Colors.black),
          // style: ,
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.red,
        duration: Duration(seconds: 2),
      ));
      //pop the loading circle

    }

    Navigator.pushNamed(context, '/home');
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool _isVisible = false;

  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  // void setEmail(String value) => email = value.trim();

  // void setPassword(String value) => password = value.toString();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.grey[300],

      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                Positioned(
                  top: -20,
                  height: 290,
                  width: width,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 300,
                  width: width + 30,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background-2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          //Hello again
          const Text(
            "Login",
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 12, 7, 7),
            ),
          ),
          SizedBox(height: 20.0),
          //email textfield
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26, vertical: 6),
            child: TextFormField(
              controller: _emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: emailValidator,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                labelText: ' E-mail address',
              ),
            ),
          ),

          //password textfield
          const SizedBox(height: 20.0),
          //email textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 3),
            child: TextFormField(
              controller: _passwordController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: passwordValidator,
              obscureText: _isVisible ? false : true,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => updateStatus(),
                  icon: Icon(_isVisible ? Icons.lock_open : Icons.lock),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                labelText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 3),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Resetpassword()));
                },
                child: const Text('Forgot password?',
                    style: TextStyle(
                      color: Colors.amber,
                    )),
              ),
            ),
          ),
          //sign in button
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 220.0,
                height: 55.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: signIn,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 20.0),
          //not a member ? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(width: 10.0),
              GestureDetector(
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 18,
                        decoration: TextDecoration.underline),
                  ),
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Registration()),
                      ))
            ],
          ),
        ]),
      ),
    );
  }
}

