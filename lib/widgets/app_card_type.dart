import 'package:checkoutpayment/controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class AppCardType extends StatelessWidget {
  // final String? AppcardType;
  static List<String> images = [
    'assets/svg/cardshape.svg',
    'assets/svg/paypalshape.svg',
    'assets/svg/payshape.svg'
  ];
  const AppCardType({
    Key? key,
    // this.cardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var paymentController = Provider.of<PaymentController>(context);
    return SizedBox(
      height: 62.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                paymentController.selectType(index);
              },
              borderRadius: BorderRadius.circular(15.r),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 600),
                height: 70.h,
                width: 100.w,
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: paymentController.seleted == index
                          ? Colors.green
                          : Colors.grey,
                      width: paymentController.seleted == index ? 4 : 2),
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                    BoxShadow(
                      color: paymentController.seleted == index
                          ? Colors.green
                          : Colors.grey,
                      blurRadius: 4,
                    )
                  ],
                ),
                child: SvgPicture.asset(images[index]),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 12.w,
          ),
        ),
      ),
    );
  }
}
