// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:house_rent_application/details/widget/content_intro.dart';
import 'package:house_rent_application/details/widget/detail_app_bar.dart';
import 'package:house_rent_application/details/widget/house_info.dart';
import 'package:house_rent_application/pages/rental_form.dart';

import '../models/house.dart';

class DetailPage extends StatelessWidget {
  final House house;
  const DetailPage({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(house: house),
            SizedBox(
              height: 20,
            ),
            ContentIntro(
              house: house,
            ),
            SizedBox(
              height: 20,
            ),
            HouseInfo(),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ApplicantPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      primary: Theme.of(context).primaryColor),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Book Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
