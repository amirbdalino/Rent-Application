// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              MenuInfo(
                  imageUrl: 'assets/bedroom.png',
                  content: '5 Bedroom\n3 Master Bedroom'),
              MenuInfo(
                  imageUrl: 'assets/bathroom.png',
                  content: '5 Bathroom\n3 Toilet'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              MenuInfo(
                  imageUrl: 'assets/kitchen.png',
                  content: '2 Kitchen\n120 sqft'),
              MenuInfo(
                  imageUrl: 'assets/parking.png',
                  content: '2 Parking\n120 sqft'),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;

  const MenuInfo({Key? key, required this.content, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Expanded(
        //flex: 2,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              // height: 20,
              // width: 20,
              child: Image.asset(
                imageUrl,
                width: 40,
                height: 50,
              ),
            ),
            Text(
              content,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
