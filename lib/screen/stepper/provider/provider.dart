

import 'package:flutter/material.dart';

class Login_screen extends ChangeNotifier {

  int i=0;
  void backstep()
  {
  i--;
  notifyListeners();
  }
  void nextsetp()
  {
  i++;
  notifyListeners();
  }
  void jumpstep(int value)
  {
  i=value;
  notifyListeners();
  }
}