import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{
  int number = 0;

  void increaseNumber(){
    number++;
    notifyListeners();
  }
}