import 'package:flutter/material.dart';

import '../../../../../config/colors/colors.dart';
import '../../../../../config/image_urls/image_urls.dart';

class EcoSearchBar extends StatelessWidget {
  const EcoSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.gray,
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: false,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 15,
          ),
          border: InputBorder.none,
          hintText: 'Search keywords..',
          hintStyle: const TextStyle(
            color: AppColors.gray1,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              AppImages.search,
              height: 30,
              width: 30,
              color: AppColors.gray1,
            ),
          ),
          suffixIcon: Image.asset(
            AppImages.filter,
            height: 20,
            width: 20,
            color: AppColors.gray1,
          ),
          suffixIconConstraints: const BoxConstraints(),
          prefixIconConstraints: const BoxConstraints(),
        ),
      ),
    );
  }
}
