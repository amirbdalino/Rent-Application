// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: const [
              MenuInfo(content: '5 Bedroom\n3 Master Bedroom'),
              MenuInfo(content: '5 Bathroom\n3 Toilet'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              MenuInfo(content: '2 Kitchen\n120 sqft'),
              SizedBox(
                height: 15,
              ),
              MenuInfo(content: '2 Parking\n120 sqft'),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String content;

  const MenuInfo({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        child: Expanded(
          child: Row(
            children: [
              Text(
                content,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 14),
              )
            ],
          ),
        ));
  }
}
