import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PaymentIntetnModel {
  String? id;
  String? object;
  int? amount;
  String? currency;
  String? clientSecret;
  PaymentIntetnModel({
    this.id,
    this.object,
    this.amount,
    this.currency,
    this.clientSecret,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'object': object,
      'amount': amount,
      'currency': currency,
      'clientSecret': clientSecret,
    };
  }

  factory PaymentIntetnModel.fromJson(Map<String, dynamic> json) {
    return PaymentIntetnModel(
      id: json['id'],
      object: json['object'],
      amount: json['amount'],
      currency: json['currency'],
      clientSecret: json['client_secret'],
    );
  }
}
