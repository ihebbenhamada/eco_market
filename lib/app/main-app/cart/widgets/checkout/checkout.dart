import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/colors/colors.dart';
import '../../../../../widgets/eco-button/eco-button.dart';
import '../../main/controllers/cart-controller.dart';
import '../../shipping-method/main/screens/shipping-method-screen.dart';

class Checkout extends StatelessWidget {
  Checkout({Key? key}) : super(key: key);

  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.primary.withOpacity(0.0),
            AppColors.primary.withOpacity(0.2),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: TextStyle(
                  color: AppColors.gray1,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                cartController.subTotal.toString(),
                style: TextStyle(
                  color: AppColors.gray1,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          10.h.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping charges',
                style: TextStyle(
                  color: AppColors.gray1,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '3 DT',
                style: TextStyle(
                  color: AppColors.gray1,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          10.h.verticalSpace,
          const Divider(
            color: AppColors.gray1,
          ),
          8.h.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '${cartController.total} DT',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          10.h.verticalSpace,
          EcoButton(
            text: 'Checkout',
            onClick: () {
              Get.to(() => ShippingMethodScreen(), id: 3);
            },
            isGradiant: true,
          )
        ],
      ),
    );
  }
}
