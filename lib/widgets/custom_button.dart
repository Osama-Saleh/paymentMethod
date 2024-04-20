import 'package:checkoutpayment/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  const CustomButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 50.h,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
      child: ElevatedButton(
          style: ButtonStyle(
            // change color when pressed button 
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? Colors.green[800]!
                    : null;
              },
            ),
            backgroundColor: const MaterialStatePropertyAll(Colors.green),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: AppStyles.weight500Size22,
          )),
    );
  }
}
