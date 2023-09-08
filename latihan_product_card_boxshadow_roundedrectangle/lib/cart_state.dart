import 'package:flutter/material.dart';

class CartState with ChangeNotifier {
  int _quantity = 0;

  // ignore: unnecessary_getters_setters
  int get quantity => _quantity;
  set quantity(int value) {
    _quantity = value;
    // notifylistener wajib ada
    notifyListeners();
  }
}
