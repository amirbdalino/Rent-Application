import 'package:flutter/material.dart';

import '../../models/house.dart';

class DetailAppBar extends StatelessWidget {
  final House house;
  const DetailAppBar({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            house.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            iconColor: Colors.black,
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
