import 'package:flutter/material.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({Key? key}) : super(key: key);

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "    Reset password",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 2.0),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          "       Enter email to reset your account password")),
                  const SizedBox(height: 8.0),
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
                  const SizedBox(height: 30.0),
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
                        'Reset',
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
