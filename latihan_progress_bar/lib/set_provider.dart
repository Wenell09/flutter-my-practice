// ignore_for_file: unnecessary_getters_setters

import 'package:flutter/material.dart';

class SetProvider with ChangeNotifier {
  int _time = 15;

  int get time => _time;
  set time(int value) {
    _time = value;
    notifyListeners();
  }
}
