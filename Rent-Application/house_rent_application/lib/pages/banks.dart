// ignore_for_file: prefer_const_constructors

//import 'dart:io';

import 'package:flutter/material.dart';
import 'package:house_rent_application/pages/rental_form.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';

class PaymentForm extends StatelessWidget {
  const PaymentForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Payments'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 39, 2, 46),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ApplicantPage()));
              }),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                      'Click one of the button to finish with your payments')),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        padding: EdgeInsets.all(5.0),
                        child: Image(
                          image: AssetImage('assets/aby.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Link(
                          uri: Uri.parse(
                              'https://ib.bankofabyssinia.com/BOADigital/servletcontroller'),
                          builder: (context, followLink) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: followLink,
                              child: Text('Pay with Abyssinia Bank')),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        padding: EdgeInsets.all(5.0),
                        child: Image(
                          image: AssetImage('assets/com.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Link(
                          uri: Uri.parse(
                              'https://www.cbeib.com.et/ARCIB-4/servlet/BrowserServlet'),
                          builder: (context, followLink) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: followLink,
                              child: Text('Pay with Commercial Bank')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        padding: EdgeInsets.all(5.0),
                        child: Image(
                          image: AssetImage('assets/wegagen.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Link(
                          uri: Uri.parse(
                              'https://www.wegagenbanksc.com.et:4443/pages/home.html?module=login'),
                          builder: (context, followLink) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: followLink,
                              child: Text('Pay with Wegagen Bank')),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        padding: EdgeInsets.all(5.0),
                        child: Image(
                          image: AssetImage('assets/khartoum.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Link(
                          uri: Uri.parse(
                              'https://cashpro.bok-sd.com/corporateWeb/login.do'),
                          builder: (context, followLink) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: followLink,
                              child: Text('Pay with khartoum Bank')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        padding: EdgeInsets.all(5.0),
                        child: Image(
                          image: AssetImage('assets/plumas.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Link(
                          uri: Uri.parse(
                              'https://www.plumasbank.com/?utm_source=Google+Ads&utm_medium=SEM&utm_campaign=General+Awareness+22&gclid=EAIaIQobChMI_Lemy5r0-AIVAI9oCR3gcAmGEAAYAiAAEgLP5_D_BwE#'),
                          builder: (context, followLink) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: followLink,
                              child: Text('Pay with Plumas Bank')),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        padding: EdgeInsets.all(5.0),
                        child: Image(
                          image: AssetImage('assets/bmo.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Link(
                          uri: Uri.parse(
                              'https://www1.bmo.com/banking/digital/login?lang=en'),
                          builder: (context, followLink) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: followLink,
                              child: Text('Pay with Bank of Montreal')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
