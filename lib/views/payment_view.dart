// import 'package:checkoutpayment/widgets/card_type.dart';
import 'package:checkoutpayment/views/thanks_view.dart';
import 'package:checkoutpayment/widgets/app_card_type.dart';
import 'package:checkoutpayment/widgets/custom_button.dart';
import 'package:checkoutpayment/widgets/custom_credit_card.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});
  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaymentView'),
      ),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child:  AppCardType(),
          ),
          SliverToBoxAdapter(
            child:  CustomCreditCard(formKey: formKey,autovalidateMode: autovalidateMode),
          ),
          
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(child: CustomButton(title: 'play',
            
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ThankView(),));
              // if(formKey.currentState!.validate()){
              //   formKey.currentState!.save();
              // }else{
              //   autovalidateMode = AutovalidateMode.always;
              //   setState(() {
                  
              //   });
              // }
            },)),
          ),
          
        ],
      )),
    );
  }
}
