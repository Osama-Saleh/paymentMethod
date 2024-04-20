import 'package:checkoutpayment/controller/payment_controller.dart';
import 'package:checkoutpayment/views/my_card_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PaymentController>(
          create: (_) => PaymentController(),
        ),
      ],
      builder: (context, child) => ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) => const MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          home: MyCardView(),
        ),
      ),
    );
  }
}
