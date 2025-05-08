import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../../config/colors/colors.dart';

class CartItem extends StatelessWidget {
  CartItem({
    Key? key,
    required this.removeItem,
    required this.increment,
    required this.decrement,
    required this.image,
    required this.price,
    required this.name,
    required this.unity,
    required this.index,
    required this.quantity,
  }) : super(key: key);

  final void Function(int) removeItem;
  final void Function(int) increment;
  final void Function(int) decrement;
  final String image;
  final int index;
  final int quantity;
  final double price;
  final String name;
  final String unity;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      direction: Axis.horizontal,
      dragStartBehavior: DragStartBehavior.down,
      endActionPane: ActionPane(
        extentRatio: 0.26,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) => removeItem(index),
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Container(
        height: 100.h,
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Row(
                children: [
                  Image.asset(
                    image,
                    height: 70,
                    width: 70,
                  ),
                  16.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '$price DT x$quantity',
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
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => increment(index),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  quantity.toString(),
                  style: TextStyle(
                    color: AppColors.gray1,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () => decrement(index),
                  child: const Icon(
                    Icons.remove,
                    color: AppColors.primary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
