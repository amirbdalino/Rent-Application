import 'package:flutter/material.dart';
import 'package:house_rent_application/pages/rental_form.dart';
import 'package:house_rent_application/pages/Reset_Password.dart';
import 'package:house_rent_application/pages/registration.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isVisible = false;

  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 26, vertical: 6),
            child: TextField(
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
            child: TextField(
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
                child: const Text('Forget password?',
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Applicant_Page()));
                  },
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
