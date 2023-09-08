// ignore: unnecessary_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AplicationColors with ChangeNotifier {
  bool _isBlue = true;

  bool get getBlue => _isBlue;

  set setBlue(bool value) {
    _isBlue = value;
    notifyListeners();
  }

  Color get color => (_isBlue) ? Colors.blue : Colors.red;
}
