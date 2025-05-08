import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/colors/colors.dart';
import '../../config/image_urls/image_urls.dart';

class EcoProductCard extends StatelessWidget {
  const EcoProductCard({
    Key? key,
    required this.isNew,
    required this.isDiscount,
    required this.isFavourite,
    required this.onTapFavourite,
    required this.image,
    required this.price,
    required this.name,
    required this.unity,
    required this.discountValue,
    required this.onTapAddToCart,
    required this.onTapProduct,
  }) : super(key: key);

  final bool isNew;
  final bool isDiscount;
  final bool isFavourite;
  final String image;
  final String name;
  final String unity;
  final double price;
  final int? discountValue;
  final void Function() onTapFavourite;
  final void Function() onTapAddToCart;
  final void Function() onTapProduct;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapProduct,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.gray,
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                isNew || isDiscount
                    ? Container(
                        height: 18,
                        width: 38,
                        color: isNew
                            ? AppColors.yellow1
                            : isDiscount
                                ? AppColors.orange7
                                : AppColors.yellow1,
                        child: Center(
                          child: Text(
                            isNew
                                ? 'NEW'
                                : isDiscount
                                    ? '${discountValue.toString()}%'
                                    : '',
                            style: TextStyle(
                              color: isNew
                                  ? AppColors.yellow2
                                  : isDiscount
                                      ? AppColors.orange8
                                      : AppColors.yellow2,
                              fontSize: 8.sp,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
                GestureDetector(
                  onTap: onTapFavourite,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 8),
                    child: Image.asset(
                      isFavourite ? AppImages.heartFill : AppImages.heart,
                      height: 16,
                      width: 16,
                    ),
                  ),
                ),
              ],
            ),
            8.h.verticalSpace,
            Center(
              child: Image.asset(
                image,
                height: 94,
                width: 94,
              ),
            ),
            8.h.verticalSpace,
            Text(
              '${double.parse(price.toStringAsFixed(3))} DT',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            5.h.verticalSpace,
            Text(
              name,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            5.h.verticalSpace,
            Text(
              unity,
              style: TextStyle(
                color: AppColors.gray1,
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            8.h.verticalSpace,
            Container(
              height: 1,
              width: double.infinity,
              color: AppColors.gray3,
            ),
            Expanded(
              child: GestureDetector(
                onTap: onTapAddToCart,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.bag,
                      height: 16,
                      width: 16,
                    ),
                    15.horizontalSpace,
                    Text(
                      'Add to cart',
                      style: TextStyle(
                        color: AppColors.gray1,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
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
