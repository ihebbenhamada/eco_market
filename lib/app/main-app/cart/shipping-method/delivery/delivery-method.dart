import 'package:eco_market/app/main-app/cart/shipping-method/main/controllers/shipping-method-controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/colors/colors.dart';

class DeliveryMethod extends StatelessWidget {
  DeliveryMethod({Key? key}) : super(key: key);
  final ShippingMethodController shippingMethodController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              shippingMethodController.nextPage(1);
              shippingMethodController.animateAddress();
            },
            child: Container(
              height: 116.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 23.h,
              ),
              color: AppColors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 32) * 0.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Standard Delivery',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        10.h.verticalSpace,
                        Text(
                          "Order will be delivered between 3 - 4 business days straights to your doorstep.",
                          style: TextStyle(
                            color: AppColors.gray1,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '3 DT',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          18.h.verticalSpace,
          Container(
            height: 116.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 23.h,
            ),
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 32) * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Next Day Delivery',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      10.h.verticalSpace,
                      Text(
                        "Order will be delivered between 3 - 4 business days straights to your doorstep.",
                        style: TextStyle(
                          color: AppColors.gray1,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '5 DT',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          18.h.verticalSpace,
          Container(
            height: 116.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 23.h,
            ),
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 32) * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nominated Delivery',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      10.h.verticalSpace,
                      Text(
                        "Order will be delivered between 3 - 4 business days straights to your doorstep.",
                        style: TextStyle(
                          color: AppColors.gray1,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Free'.toUpperCase(),
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
