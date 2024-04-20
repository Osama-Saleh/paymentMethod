import 'dart:convert';

import 'package:checkoutpayment/utils/api/api_keys.dart';
import 'package:checkoutpayment/utils/api/api_service.dart';
import 'package:checkoutpayment/utils/models/payment_intent_model/payment_intent_model.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StriperService {
  ApiSerice apiSerice = ApiSerice();
  Future<PaymentIntetnModel> createPaymentIntent() async {
    var response = await apiSerice.postUrl(
        url: 'https://api.stripe.com/v1/payment_intents',
        body: {
          'amount': '200',
          'currency': 'USD',
        },
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

  Future<PaymentSheetPaymentOption?> displayPaymentIntent()async{
    await Stripe.instance.presentPaymentSheet();
  }
  Future makePaymentIntent()async{
   var createPayment = await createPaymentIntent();
    await initPaymentSheet(paymentIntentClientSecret: createPayment.clientSecret);
    await displayPaymentIntent();
  }
}
