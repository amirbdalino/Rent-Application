import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool _isVisible = false;
  final autovalidate = true;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[30],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text('Create Account',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    )),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      labelText: 'First Name',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      labelText: 'Last Name',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
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
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
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
                      labelText: 'Confirm Password',
                    ),
                  ),
                ),
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
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text('Already have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Login',
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 18.0,
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
