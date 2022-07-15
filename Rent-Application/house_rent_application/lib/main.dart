import 'package:flutter/material.dart';
import 'package:house_rent_application/login_page.dart';
import 'package:house_rent_application/pages/registration.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/singup': (context) => const Registration(),
      },
    );
  }
}
