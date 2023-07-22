import 'package:flutter/material.dart';

class ControllerUser extends ChangeNotifier {
  String myImage = 'assets/images/profile1.jpeg';
  String myName = 'Abdeljalil Kchih';
  changMyImage(String image) {
    myImage = image;
    // update all used image
    notifyListeners();
  }

  changeMyName(String name) {
    myName = name;
    // update all used name
    notifyListeners();
  }
}
