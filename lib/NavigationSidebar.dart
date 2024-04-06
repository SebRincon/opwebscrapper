// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:opwebscrapper/pages/Home/home_page_desktop.dart';
import 'package:opwebscrapper/pages/Home/home_page_mobile.dart';
import 'package:opwebscrapper/pages/Home/home_page_tablet.dart';
import 'package:opwebscrapper/responsive/responsive_layout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Row(
                  children: const [
                    Icon(Icons.shopping_cart_checkout_outlined),
                    Text('Cool App',
                        style:
                            TextStyle(fontFamily: 'BebasNeue', fontSize: 40)),
                  ],
                ),
              ),
              //?    __ __                 ___       __  __
              //?   / // /__  __ _  ___   / _ )__ __/ /_/ /____  ___
              //?  / _  / _ \/  ' \/ -_) / _  / // / __/ __/ _ \/ _ \
              //? /_//_/\___/_/_/_/\__/ /____/\_,_/\__/\__/\___/_//_/

              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, _, __) {
                        return ResponsiveLayout(
                          mobileScaffold: HomePageMobile(),
                          tabletScaffold: HomePageTablet(),
                          desktopScaffold: HomePageDesktop(),
                        );
                      },
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(Icons.home_outlined),
                  title: Text('Home'),
                ),
              ),
              //?    ____    __  __  _                 ___       __  __
              //?   / __/__ / /_/ /_(_)__  ___ ____   / _ )__ __/ /_/ /____  ___
              //?  _\ \/ -_) __/ __/ / _ \/ _ `(_-<  / _  / // / __/ __/ _ \/ _ \
              //? /___/\__/\__/\__/_/_//_/\_, /___/ /____/\_,_/\__/\__/\___/_//_/
              //?                        /___/
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                FirebaseAuth.instance.signOut();
              });
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
