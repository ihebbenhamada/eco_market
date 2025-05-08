import 'package:eco_market/config/colors/colors.dart';
import 'package:eco_market/config/image_urls/image_urls.dart';
import 'package:eco_market/widgets/eco-button/eco-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/main-auth_controller.dart';

class MainAuthScreen extends StatelessWidget {
  MainAuthScreen({Key? key}) : super(key: key);
  final mainAuthController = Get.put(MainAuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              AppImages.mainAuth,
              height: MediaQuery.of(context).size.height * 0.55,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.gray,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          24.h.verticalSpace,
                          Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black2,
                            ),
                          ),
                          24.h.verticalSpace,
                          EcoButton(
                            text: 'Continue with google',
                            onClick: () {},
                            withIcon: true,
                            isPrimary: false,
                            fontSize: 14,
                            iconLeft: AppImages.google,
                          ),
                          16.h.verticalSpace,
                          EcoButton(
                            text: 'Continue with facebook',
                            onClick: () {},
                            withIcon: true,
                            isPrimary: false,
                            fontSize: 14,
                            iconLeft: AppImages.facebook,
                          ),
                          16.h.verticalSpace,
                          EcoButton(
                            text: 'Continue with phone number',
                            onClick: () {},
                            withIcon: true,
                            isPrimary: false,
                            fontSize: 14,
                            iconLeft: AppImages.phone,
                          ),
                        ],
                      ),
                    ),
                    EcoButton(
                      text: 'Continue to Eco Market',
                      onClick: mainAuthController.intentEcoMarket,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      isGradiant: true,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).viewPadding.bottom + 16.h,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
