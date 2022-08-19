// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_textfield_validation/flutter_textfield_validation.dart';
import 'package:house_rent_application/details/detail.dart';
import 'package:house_rent_application/home/home_page.dart';
import 'package:house_rent_application/pages/bottom_navigators.dart';
import 'package:house_rent_application/pages/navBar.dart';

class ApplicantPage extends StatefulWidget {
  const ApplicantPage({Key? key}) : super(key: key);

  @override
  State<ApplicantPage> createState() => _ApplicantPageState();
}

class _ApplicantPageState extends State<ApplicantPage> {
  final firstName = TextEditingController();

  // @override
  // void dispose() {
  //   firstName.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 39, 2, 46),
          title: const Text(
            "Rental Form",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomNavBar()));
              }),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Tenant Information",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Divider(
                height: 30.0,
                color: Colors.grey,
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (input) => input!.validateName()
                      ? null
                      : "Name should to be at least 3 characters long alphabets!",
                  //controller: firstName,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 88, 77, 77),
                      ),
                    ),
                    labelText: 'First Name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (input) => input!.validateName()
                      ? null
                      : "Name should to be at least 3 characters long alphabets!",
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (input) => input!.validateEmail()
                      ? null
                      : "Please enter valid email!",
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    labelText: ' E-mail address',
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (input) => input!.validatePhone()
                      ? null
                      : "Phone should to be at least 10 digits long !",
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    labelText: ' Phone Number',
                  ),
                  keyboardType: TextInputType.phone,
                  //maxLength: 10,
                ),
              ),
              const Divider(
                height: 30.0,
                color: Colors.grey,
                thickness: 2,
              ),
              const Text(
                "Current Rental / Residence History",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.location_city),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    labelText: ' Country',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (input) => input!.validateAddress()
                      ? null
                      : "Address should to be at least 3 characters long alphabets!",
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.add_location),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    labelText: ' Address',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.badge_rounded),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    labelText: ' occupation',
                  ),
                ),
              ),
              const Divider(
                height: 30.0,
                color: Colors.grey,
                thickness: 2,
              ),
              const Text(
                "House hold",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextFormField(
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  // validator: (input) => input!.validatePincode()
                  //     ? null
                  //     : "Address should to be at least 3 characters long alphabets!",
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.numbers),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    labelText: ' Number of house hold',
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
                    openDialog();
                  },
                  child: Text(
                    'Submit',
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
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
            title: const Center(child: Text("Thank You")),
            actions: [
              Column(
                children: [
                  const Icon(
                    Icons.done_sharp,
                    color: Colors.green,
                    size: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("The form was submitted successfully."),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("You can pass to payment page."),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bank');
                      },
                      child: const Text(
                        "Pay",
                        style: TextStyle(
                          color: Color.fromARGB(255, 17, 17, 17),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      )),
                ],
              )
            ],
          ));
}
