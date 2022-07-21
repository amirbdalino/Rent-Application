// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categoriesList = ['Top', 'Near you', 'Apartment'];
  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 35,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelect = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(left: 45),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: currentSelect == index
                        ? Theme.of(context).primaryColor
                        : Colors.transparent,
                    width: 3,
                  ))),
                  child: Text(
                    categoriesList[index],
                    style: TextStyle(
                      color: currentSelect == index
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).textTheme.bodyText1!.color,
                      fontSize: currentSelect == index ? 16 : 14,
                      fontWeight: currentSelect == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              )),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: categoriesList.length),
    );
  }
}
