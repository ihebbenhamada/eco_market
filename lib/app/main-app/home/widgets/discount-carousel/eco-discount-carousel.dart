import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/colors/colors.dart';

class EcoDiscountCarousel extends StatelessWidget {
  const EcoDiscountCarousel({
    Key? key,
    required this.onChangePage,
    required this.listDiscount,
    required this.currentPage,
  }) : super(key: key);
  final void Function(int) onChangePage;
  final List<String> listDiscount;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200.h,
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) => onChangePage(value),
            itemCount: listDiscount.length,
            itemBuilder: (context, index) => SizedBox(
              height: 250,
              width: double.infinity,
              child: CachedNetworkImage(
                imageUrl: listDiscount[index],
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                listDiscount.length,
                (index) => buildDot(index: index),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color:
            currentPage == index ? AppColors.primary : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
