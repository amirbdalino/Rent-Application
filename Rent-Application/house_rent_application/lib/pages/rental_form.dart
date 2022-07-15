import 'package:flutter/material.dart';
import 'package:house_rent_application/pages/navBar.dart';

class Applicant_Page extends StatefulWidget {
  const Applicant_Page({Key? key}) : super(key: key);

  @override
  State<Applicant_Page> createState() => _Applicant_PageState();
}

class _Applicant_PageState extends State<Applicant_Page> {
  final firstName = TextEditingController();
  bool _validate = false;

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
        drawer: NavBar(),
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 57, 18, 83),
          title: const Text(
            "Rental Application Form",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextField(
                  controller: firstName,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 88, 77, 77),
                      ),
                    ),
                    labelText: 'First Name',
                    errorText: _validate ? 'Username Can\'t Be Empty' : null,
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    labelText: ' Phone Number',
                  ),
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextField(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextField(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextField(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: TextField(
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
            title: const Text("Thank You"),
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
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        "Playment",
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
