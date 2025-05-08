import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors/colors.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4),
                BlendMode.darken,
              ),
              image: AssetImage(image),
            ),
          ),
        ),
        Positioned(
          top: 70.h,
          right: 0,
          left: 0,
          child: Column(
            children: [
              Text(
                "Eco Market",
                style: TextStyle(
                  fontSize: 40.sp,
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              36.h.verticalSpace,
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.white,
                  height: 1.4,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
