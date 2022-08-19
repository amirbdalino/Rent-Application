// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:house_rent_application/home/widget/categories.dart';
//import 'package:house_rent_application/home/widget/top_house.dart';
import 'package:house_rent_application/home/widget/welcome.dart';
//import 'package:house_rent_application/pages/navBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[300],
          //drawer: NavBar(),
          appBar: AppBar(
            title: Text('Kabbee Real Estate'),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 39, 2, 46),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                WelcomeText(),
                SizedBox(
                  height: 20,
                ),
                Categories(),

                //TopHouse(),
                // SizedBox(
                //   height: 20,
                // ),
                // Text(
                //   'What are you looking for?',
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     SizedBox(
                //       width: 100,
                //       height: 50.0,
                //       child: ElevatedButton(
                //         style: ElevatedButton.styleFrom(
                //           primary: Colors.amber,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(30.0),
                //           ),
                //         ),
                //         onPressed: () {
                //           Navigator.pushNamed(context, '/rent');
                //         },
                //         child: Text(
                //           'Houses for rent',
                //           style: TextStyle(
                //             color: Colors.grey[900],
                //             fontWeight: FontWeight.bold,
                //             fontSize: 18,
                //           ),
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 100,
                //       height: 50.0,
                //       child: ElevatedButton(
                //         style: ElevatedButton.styleFrom(
                //           primary: Colors.amber,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(30.0),
                //           ),
                //         ),
                //         onPressed: () {},
                //         child: Text(
                //           'Houses for sale',
                //           style: TextStyle(
                //             color: Colors.grey[900],
                //             fontWeight: FontWeight.bold,
                //             fontSize: 18,
                //           ),
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 100,
                //       height: 50.0,
                //       child: ElevatedButton(
                //         style: ElevatedButton.styleFrom(
                //           primary: Colors.amber,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(30.0),
                //           ),
                //         ),
                //         onPressed: () {
                //           Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) => const GuestHouse()));
                //         },
                //         child: Text(
                //           'Guest Houses',
                //           style: TextStyle(
                //             color: Colors.grey[900],
                //             fontWeight: FontWeight.bold,
                //             fontSize: 18,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(height: 70.0),
              ],
            ),
          )),
      // onTap: () => Navigator.pushNamed(context, '/home'),
    );
  }
}
