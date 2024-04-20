import 'package:checkoutpayment/utils/app_styles.dart';
import 'package:checkoutpayment/widgets/card_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InformationThanksCard extends StatelessWidget {
  const InformationThanksCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.0.sw,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: const Color(0xffEDEDED),
        borderRadius: BorderRadiusDirectional.circular(20.r),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16),
        child: Column(
          children: [
            Text(
              'Thank you!',
              style: AppStyles.weight500Size25,
            ),
            Text(
              'Your transaction was successful',
              style: AppStyles.weight400Size20,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.h,
            ),
            CardPrice(
              title: 'Date',
              price: '01/24/2023',
              style: AppStyles.weight600Size18,
              styleTitle: AppStyles.weight400Size18,
            ),
            SizedBox(
              height: 20.h,
            ),
            CardPrice(
              title: 'Time',
              price: '10:15 AM',
              style: AppStyles.weight600Size18,
              styleTitle: AppStyles.weight400Size18,
            ),
            SizedBox(
              height: 20.h,
            ),
            CardPrice(
              title: 'To',
              price: 'Sam Louis',
              style: AppStyles.weight600Size18,
              styleTitle: AppStyles.weight400Size18,
            ),
            SizedBox(
              height: 20.h,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
              color: Color(0xffC7C7C7),
              thickness: 2,
            ),
            SizedBox(
              height: 7.h,
            ),
            CardPrice(
              title: 'Total',
              price: '50.97\$',
              style: AppStyles.weight600Size18,
              styleTitle: AppStyles.weight600Size18,
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 80.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: SvgPicture.asset(
                      'assets/svg/logomastercard.svg',
                      height: 30.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 23.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Credit Card',
                        style: AppStyles.weight400Size18,
                      ),
                      Text(
                        'Mastercard **78',
                        style: AppStyles.weight400Size18
                            .copyWith(color: Colors.black.withOpacity(0.7)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  FontAwesomeIcons.barcode,
                  size: 60.sp,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(
                        color: const Color(0xff34A853),
                        width: 2.w,
                      )),
                  child: Text(
                    'PAID',
                    style: AppStyles.weight600Size24,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
