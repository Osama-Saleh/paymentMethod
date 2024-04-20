import 'package:checkoutpayment/utils/api/api_service.dart';
import 'package:checkoutpayment/utils/app_styles.dart';
import 'package:checkoutpayment/utils/striper_service.dart';
import 'package:checkoutpayment/views/payment_view.dart';
import 'package:checkoutpayment/widgets/app_card_type.dart';
import 'package:checkoutpayment/widgets/card_price.dart';
import 'package:checkoutpayment/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Card',
          style: AppStyles.weight500Size25,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
        width: 1.sw,
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Image(
                image: AssetImage(
                  'assets/images/salla.png',
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CardPrice(
              title: 'Order Subtotal',
              price: '42.97\$',
              style: AppStyles.weight400Size12,
            ),
            CardPrice(
              title: 'Discount',
              price: '0\$',
              style: AppStyles.weight400Size12,
            ),
            CardPrice(
              title: 'Shipping',
              price: '8\$',
              style: AppStyles.weight400Size12,
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 30.w),
              child: const Divider(),
            ),
            CardPrice(
              title: 'Total',
              price: '50.97\$',
              style: AppStyles.weight400Size12.copyWith(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomButton(
              title: 'Complete Payment',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const AppCardType(),
                          SizedBox(
                            height: 15.h,
                          ),
                          CustomButton(title: 'continue', onPressed: () {
                            StriperService().createPaymentIntent();
                          })
                        ],
                      ),
                    );
                  },
                );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const PaymentView(),
                //   ),
                // );
              },
            ),
            SizedBox(
              height: 16.h,
            )
          ],
        ),
      )),
    );
  }
}
