import 'package:eco_market/app/main-app/home/product-details/controller/product-detail-controller.dart';
import 'package:eco_market/config/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/image_urls/image_urls.dart';
import '../../../../../widgets/eco-button/eco-button.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({Key? key, required this.data, required this.id})
      : super(key: key);
  final Map<String, dynamic> data;
  final int id;
  final productDetailsController = Get.put(ProductDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        AppColors.gray1.withOpacity(0),
                        AppColors.white,
                      ],
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.white,
                        spreadRadius: 5,
                        blurRadius: 9,
                        offset: Offset(0, 9), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      data['image'],
                      height: 250,
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  child: GestureDetector(
                    onTap: () {
                      Get.back(id: id);
                    },
                    child: const Icon(Icons.arrow_back_ios_new),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.gray,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16,
                    top: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${data['price'].toString()} DT',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                            ),
                          ),
                          GetBuilder<ProductDetailsController>(
                            builder: (_) => GestureDetector(
                              onTap: productDetailsController.onTapFavourite,
                              child: Image.asset(
                                productDetailsController.isFavourite
                                    ? AppImages.heartFill
                                    : AppImages.heart,
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      4.h.verticalSpace,
                      Text(
                        data['name'],
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                      4.h.verticalSpace,
                      Text(
                        data['unity'],
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: AppColors.gray1,
                          letterSpacing: 0.5,
                        ),
                      ),
                      6.h.verticalSpace,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            data['rating'].toString(),
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.black,
                              letterSpacing: 0.5,
                            ),
                          ),
                          4.h.horizontalSpace,
                          RatingBarIndicator(
                            rating: double.parse(data['rating'].toString()),
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            unratedColor: AppColors.gray3,
                            itemCount: 5,
                            itemSize: 18.0,
                            direction: Axis.horizontal,
                          ),
                          4.h.horizontalSpace,
                          Text(
                            '( ${data['reviews_nbr'].toString()} )',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.black,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                      16.h.verticalSpace,
                      Text(
                        data['description'],
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 12.sp,
                          color: AppColors.gray1,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 45.h,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      'Quantity',
                                      style: TextStyle(
                                        height: 1.5,
                                        fontSize: 12.sp,
                                        color: AppColors.gray1,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ),
                                  GetBuilder<ProductDetailsController>(
                                    builder: (_) => Row(
                                      children: [
                                        GestureDetector(
                                          onTap: productDetailsController
                                              .removeQuantity,
                                          child: Container(
                                            height: 45.h,
                                            width: 45.h,
                                            decoration: const BoxDecoration(
                                              color: AppColors.white,
                                              border: Border(
                                                left: BorderSide(
                                                  color: AppColors.gray3,
                                                ),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons.remove,
                                                color: AppColors.primary,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 45.h,
                                          width: 45.h,
                                          decoration: const BoxDecoration(
                                            color: AppColors.white,
                                            border: Border(
                                              left: BorderSide(
                                                color: AppColors.gray3,
                                              ),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              productDetailsController.quantity
                                                  .toString(),
                                              style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16.sp,
                                                color: AppColors.black,
                                                letterSpacing: 0.5,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: productDetailsController
                                              .addQuantity,
                                          child: Container(
                                            height: 45.h,
                                            width: 45.h,
                                            decoration: const BoxDecoration(
                                              color: AppColors.white,
                                              border: Border(
                                                left: BorderSide(
                                                  color: AppColors.gray3,
                                                ),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons.add,
                                                color: AppColors.primary,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            8.h.verticalSpace,
                            EcoButton(
                              text: 'Add to cart',
                              onClick: () {},
                              withIcon: true,
                              isPrimary: false,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              iconRight: AppImages.bag1,
                              isGradiant: true,
                              textColor: AppColors.white,
                            ),
                            8.h.verticalSpace,
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
