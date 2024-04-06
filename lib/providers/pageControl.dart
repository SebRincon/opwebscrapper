import 'package:flutter/material.dart';

class PageControlNotifier extends ChangeNotifier {
  String pageIndex = '/';

  void changePage(String newIndex, BuildContext context) {
    pageIndex = newIndex;
    notifyListeners();
  }
}
