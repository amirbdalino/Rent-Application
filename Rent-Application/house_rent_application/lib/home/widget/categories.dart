// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:house_rent_application/home/widget/top_house.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.center,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                controller: tabController,
                isScrollable: true,
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: 'Top',
                  ),
                  Tab(
                    text: 'Near you',
                  ),
                  Tab(
                    text: 'Apartment',
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.maxFinite,
            height: 300,
            child: TabBarView(
              controller: tabController,
              children: [
                TopHouse(),
                TopHouse(),
                TopHouse(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
