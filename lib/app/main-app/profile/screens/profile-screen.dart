import 'package:eco_market/app/main-app/profile/controllers/profile-controller.dart';
import 'package:eco_market/app/main-app/profile/widgets/profile-item/profile-item.dart';
import 'package:eco_market/config/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/image_urls/image_urls.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final profileController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 150.h,
                color: AppColors.white,
              ),
              Expanded(
                child: Container(
                  color: AppColors.gray,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 65.h, right: 16, left: 16),
                  child: Column(
                    children: [
                      Text(
                        'Iheb Ben Hamada',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      5.h.verticalSpace,
                      Text(
                        'ihebbenhamada@gmail.com',
                        style: TextStyle(
                          color: AppColors.gray1,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      8.h.verticalSpace,
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: profileController.listProfileItems.length,
                        itemBuilder: (context, index) {
                          final item =
                              profileController.listProfileItems[index];
                          return ProfileItem(
                            onTap: () => profileController.onTap(index),
                            icon: item['icon'],
                            title: item['name'],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return index == 5
                              ? 25.h.verticalSpace
                              : 0.h.verticalSpace;
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 93.h,
            left: 0,
            right: 0,
            child: Image.asset(
              AppImages.profilePic,
              height: 114.h,
              width: 114.h,
            ),
          ),
        ],
      ),
    );
  }
}
