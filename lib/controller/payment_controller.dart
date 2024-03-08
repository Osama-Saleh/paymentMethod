import 'package:flutter/material.dart';

class PaymentController extends ChangeNotifier {
  int seleted = 0;
  void selectType(int type) {
    seleted = type;
    notifyListeners();
  }
}
