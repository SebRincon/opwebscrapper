// ignore_for_file: prefer_const_constructors

import 'package:opwebscrapper/constants.dart';
import 'package:flutter/material.dart';

class UsefulBox extends StatelessWidget {
  const UsefulBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(8), decoration: boxDecorations);
  }
}
