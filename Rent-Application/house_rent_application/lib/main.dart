import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:house_rent_application/login_page.dart';
import 'package:house_rent_application/pages/banks.dart';
import 'package:house_rent_application/pages/main_page.dart';
import 'package:house_rent_application/pages/registration.dart';
import 'package:house_rent_application/pages/rent_page.dart';

bool shouldUseFirebaseEmulator = false;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Firebase.initializeApp();
  } else {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCRuM3rotk09XECjrDEywdrjnigzX8Nj84",
          authDomain: "rent-app-9c17c.firebaseapp.com",
          databaseURL: "https://rent-app-9c17c-default-rtdb.firebaseio.com",
          projectId: "rent-app-9c17c",
          storageBucket: "rent-app-9c17c.appspot.com",
          messagingSenderId: "380116515352",
          appId: "1:380116515352:web:1049c569a5f8cb2453a16d",
          measurementId: "G-N0XC8M71GQ"),
    );
  }
  if (shouldUseFirebaseEmulator) {
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  }
  runApp(const MyApp());
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
        '/home': (context) => MainPage(),
        '/rent': (context) => Rent(),
        '/singup': (context) => const Registration(),
        '/bank': (context) => PaymentForm(),
      },
    );
  }
}
