// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:opwebscrapper/NavigationSidebar.dart';
import 'package:opwebscrapper/constants.dart';
import 'package:opwebscrapper/util/useful_box.dart';
import 'package:opwebscrapper/util/useful_tile.dart';
import 'package:flutter/material.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({Key? key}) : super(key: key);

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: rootAppbar,
      drawer: CustomDrawer(),
      body: Column(children: [
        AspectRatio(
          aspectRatio: 1,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 4,
              itemBuilder: (context, index) {
                return UsefulBox();
              },
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return UsefuleTile();
          },
        ))
      ]),
    );
  }
}
