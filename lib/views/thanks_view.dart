import 'package:checkoutpayment/widgets/information_thanks_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThankView extends StatelessWidget {
  const ThankView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.w, top: 40.w),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            InformationThanksCard(),
            Positioned(
              left: -20.w,
              bottom: 0.2.sh,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              right: -20.w,
              bottom: 0.2.sh,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0.2.sh + 20,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: List.generate(
                      20,
                      (index) => Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 1),
                              decoration: BoxDecoration(
                                  color: const Color(0xffB8B8B8),
                                  borderRadius: BorderRadius.circular(10.r)),
                              height: 2,
                            ),
                          )),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: -50,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: const Color(0xffEDEDED),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color(0xff34A853),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 50.r,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
