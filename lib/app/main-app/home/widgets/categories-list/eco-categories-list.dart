import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/colors/colors.dart';

class EcoCategoriesList extends StatelessWidget {
  const EcoCategoriesList({
    Key? key,
    required this.listCategories,
    required this.onTapCategory,
  }) : super(key: key);

  final List<Map<String, String>> listCategories;
  final void Function(Map<String, String>) onTapCategory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: listCategories.length,
        itemBuilder: (context, index) {
          Map<String, String> category = listCategories[index];
          return GestureDetector(
            onTap: () => onTapCategory(listCategories[index]),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ), // Adjust padding as needed
              child: Column(
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
    );
  }
}
