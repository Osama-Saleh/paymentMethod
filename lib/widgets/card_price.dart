// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardPrice extends StatelessWidget {
  final String? title;
  final String? price;
  final TextStyle? style;
  final TextStyle? styleTitle;
  const CardPrice(
      {Key? key, this.title, this.price, this.style, this.styleTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 0.w),
      child: Row(
        children: [
          Text(title ?? '', style: styleTitle),
          const Spacer(),
          Text(
            '${price ?? ''}',
            style: style,
          ),
        ],
      ),
    );
  }
}
