import 'package:eco_market/config/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widgets/eco-button/eco-button.dart';
import '../controllers/intro_controller.dart';
import '../widgets/intro-content.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);
  final introController = Get.put(IntroController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              introController.changePage(value);
            },
            physics: const ClampingScrollPhysics(),
            itemCount: introController.introData.length,
            itemBuilder: (context, index) => IntroContent(
              image: introController.introData[index]["image"]!,
              text: introController.introData[index]['text']!,
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            left: 16,
            child: Column(
              children: [
                GetBuilder<IntroController>(
                  builder: (_) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      introController.introData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                ),
                16.h.verticalSpace,
                EcoButton(
                  text: "Get Started!",
                  onClick: () => introController.handleClickStart(),
                ),
              ],
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
      width: introController.currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: introController.currentPage == index
            ? AppColors.primary
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
