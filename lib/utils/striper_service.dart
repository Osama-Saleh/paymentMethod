import 'dart:convert';
import 'dart:ui';

import 'package:checkoutpayment/utils/api/api_keys.dart';
import 'package:checkoutpayment/utils/api/api_service.dart';
import 'package:checkoutpayment/utils/models/payment_intent_model/payment_intent_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StriperService {
  ApiSerice apiSerice = ApiSerice();
  Future<PaymentIntetnModel> createPaymentIntent({required int amount , required String currency}) async {
    Map body = {
      'amount': (amount*100).toString(),
      'currency': currency,
    };
    var response = await apiSerice.postUrl(
        url: 'https://api.stripe.com/v1/payment_intents',
        body: body,
        token: ApiKeys.secretKey);
    var finalResponse = jsonDecode(response.body);
    var paymentIntetnModel = PaymentIntetnModel.fromJson(finalResponse);
    
    return paymentIntetnModel;
  }

  Future<void> initPaymentSheet(
      {required String? paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      // Main params
      merchantDisplayName: 'Osama Saleh',
      paymentIntentClientSecret: paymentIntentClientSecret,
    ));
  }

  Future<PaymentSheetPaymentOption?> displayPaymentIntent() async {
  return  await Stripe.instance.presentPaymentSheet();
  }

  Future makePaymentIntent({required int amount , required String currency}) async {
    var createPayment = await createPaymentIntent(amount:amount, currency:currency);
    await initPaymentSheet(
        paymentIntentClientSecret: createPayment.clientSecret);
    await displayPaymentIntent();
  }
}
