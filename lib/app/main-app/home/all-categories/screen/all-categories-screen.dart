import 'package:eco_market/app/main-app/home/all-categories/controller/all-categories-controller.dart';
import 'package:eco_market/config/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AllCategoriesScreen extends StatelessWidget {
  AllCategoriesScreen({Key? key}) : super(key: key);
  final allCategoriesController = Get.put(AllCategoriesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 65.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Center(
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.back(id: 1);
                      },
                      child: const Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                ],
              ),
            ),
            16.h.verticalSpace,
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10, // No horizontal spacing between items
                mainAxisSpacing: 10,
                crossAxisCount: 3, // Number of columns
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: allCategoriesController.listCategories.length,
              itemBuilder: (context, index) {
                Map<String, String> category =
                    allCategoriesController.listCategories[index];
                return GestureDetector(
                  onTap: () => allCategoriesController.onTapCategory(category),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          category['image']!,
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 8,
                        ), // Adjust spacing between image and text
                        Text(
                          category['name']!,
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.gray1,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
