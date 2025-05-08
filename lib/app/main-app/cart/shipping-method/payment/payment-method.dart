import 'package:eco_market/app/main-app/cart/shipping-method/main/controllers/shipping-method-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethod extends StatelessWidget {
  PaymentMethod({Key? key}) : super(key: key);
  final ShippingMethodController shippingMethodController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('payment')],
    );
  }
}
