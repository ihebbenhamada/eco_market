import 'package:eco_market/app/main-app/cart/shipping-method/delivery/delivery-method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../config/colors/colors.dart';
import '../../address/address-method.dart';
import '../../payment/payment-method.dart';
import '../controllers/shipping-method-controller.dart';

class ShippingMethodScreen extends StatelessWidget {
  ShippingMethodScreen({Key? key}) : super(key: key);
  final shippingMethodController = Get.put(ShippingMethodController());
  final List<Widget> _pages = [
    DeliveryMethod(),
    AddressMethod(),
    PaymentMethod(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        child: Column(
          children: [
            SizedBox(
              height: 65.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Center(
                    child: Text(
                      'Shipping Method',
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.back(id: 3);
                      },
                      child: const Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                ],
              ),
            ),
            8.h.verticalSpace,
            Expanded(
              child: Container(
                color: AppColors.gray,
                child: Column(
                  children: [
                    22.h.verticalSpace,
                    GetBuilder<ShippingMethodController>(
                      builder: (_) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary,
                              ),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            width: 86,
                            height: 1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  shippingMethodController.startAddressBarColor,
                                  shippingMethodController.startAddressBarColor
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    shippingMethodController
                                        .startAddressContainerColor,
                                    shippingMethodController
                                        .startAddressContainerColor
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            width: 86,
                            height: 1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  shippingMethodController.startPaymentBarColor,
                                  shippingMethodController.startPaymentBarColor
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    shippingMethodController
                                        .startPaymentContainerColor,
                                    shippingMethodController
                                        .startPaymentContainerColor
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    6.h.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal:
                            ((MediaQuery.of(context).size.width - 292) / 2) - 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery'.toUpperCase(),
                            style: TextStyle(
                              color: AppColors.gray1,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            'Address'.toUpperCase(),
                            style: TextStyle(
                              color: AppColors.gray1,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            'Payment'.toUpperCase(),
                            style: TextStyle(
                              color: AppColors.gray1,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    30.h.verticalSpace,
                    Expanded(
                      child: PageView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: shippingMethodController.pageController,
                        itemCount: _pages.length,
                        onPageChanged: (index) =>
                            shippingMethodController.onPageChanged(index),
                        itemBuilder: (BuildContext context, int index) {
                          return _pages[index];
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
