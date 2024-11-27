import 'package:flutter/material.dart';
class ViewModelIncrease extends ChangeNotifier {
  int point =3 ;
  incrementCounter() {
    // ignore: unused_local_variable
    point++;
    print("point $point");
    notifyListeners();
  }
}