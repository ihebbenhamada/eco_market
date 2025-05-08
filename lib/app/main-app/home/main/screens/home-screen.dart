import 'package:eco_market/app/main-app/home/widgets/search-bar/eco-search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/colors/colors.dart';
import '../../widgets/categories-list/eco-categories-list.dart';
import '../../widgets/discount-carousel/eco-discount-carousel.dart';
import '../../widgets/product-list/eco-products-list.dart';
import '../controllers/home-controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        child: Column(
          children: [
            8.h.verticalSpace,
            const EcoSearchBar(),
            8.h.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GetBuilder<HomeController>(
                      builder: (_) => EcoDiscountCarousel(
                        onChangePage: (int value) =>
                            homeController.changePage(value),
                        listDiscount: homeController.listDiscount,
                        currentPage: homeController.currentPage,
                      ),
                    ),
                    16.h.verticalSpace,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          GestureDetector(
                            onTap: homeController.navigateToAllCategories,
                            child: Row(
                              children: [
                                Text(
                                  'All Categories',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    color: AppColors.gray1,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                8.horizontalSpace,
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: AppColors.gray1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    16.h.verticalSpace,
                    EcoCategoriesList(
                      listCategories: homeController.listCategories,
                      onTapCategory: (category) =>
                          homeController.onTapCategory(category),
                    ),
                    22.h.verticalSpace,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Featured products',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          GestureDetector(
                            onTap: homeController.onTapAllProducts,
                            child: Row(
                              children: [
                                Text(
                                  'All products',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    color: AppColors.gray1,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                8.horizontalSpace,
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: AppColors.gray1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    16.h.verticalSpace,
                    GetBuilder<HomeController>(
                      builder: (_) => EcoProductsList(
                        listProducts: homeController.listProducts,
                        onTapFavourite: homeController.onTapFavourite,
                        onTapAddToCart: homeController.onTapAddToCart,
                        onTapProduct: homeController.onTapProduct,
                      ),
                    ),
                    16.h.verticalSpace,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
