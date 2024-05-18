import 'package:checkoutpayment/utils/api/api_service.dart';
import 'package:checkoutpayment/utils/striper_service.dart';
import 'package:flutter/material.dart';

class PaymentController extends ChangeNotifier {
  int seleted = 0;
  void selectType(int type) {
    seleted = type;
    notifyListeners();
  }

  Future makePaymentIntent({required int amount , required String currency}) async {
    await StriperService().makePaymentIntent(amount:amount, currency:currency);
    
  }
}
