import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/colors/colors.dart';

class EcoButton extends StatelessWidget {
  const EcoButton({
    Key? key,
    this.textColor = AppColors.black,
    required this.text,
    required this.onClick,
    this.enabled = true,
    this.isPrimary = true,
    this.height = 52,
    this.width = double.infinity,
    this.borderRadius = 8,
    this.iconLeft,
    this.iconRight,
    this.withIcon = false,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w400,
    this.isGradiant,
  }) : super(key: key);

  final double height;
  final double width;
  final double? borderRadius;
  final double? fontSize;
  final String? iconLeft;
  final String? iconRight;
  final Color? textColor;
  final String text;
  final void Function() onClick;
  final bool enabled;
  final FontWeight? fontWeight;
  final bool? isGradiant;
  final bool? withIcon;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Container(
        width: width,
        height: height.h,
        decoration: BoxDecoration(
          color: isPrimary
              ? enabled
                  ? AppColors.primary
                  : AppColors.primary.withOpacity(0.5)
              : withIcon != null
                  ? AppColors.white
                  : AppColors.white,
          borderRadius: BorderRadius.circular(borderRadius!),
          border: isPrimary || withIcon != null
              ? null
              : Border.all(color: AppColors.primary),
          gradient: isGradiant != null
              ? LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    AppColors.primary.withOpacity(0.4),
                    AppColors.primary,
                  ],
                )
              : null,
          boxShadow: [
            BoxShadow(
              color: AppColors.gray1.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: iconLeft == null && iconRight == null
            ? Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSize?.sp,
                    color: isPrimary ? AppColors.white : AppColors.primary,
                    fontWeight: fontWeight,
                    letterSpacing: 0.5,
                  ),
                ),
              )
            : Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: iconLeft != null ? 26 : 0,
                      right: iconRight != null ? 26 : 0,
                    ),
                    child: Align(
                      alignment: iconLeft != null
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Image.asset(
                        iconLeft != null ? iconLeft! : iconRight!,
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: fontSize?.sp,
                        color: isPrimary
                            ? textColor == null
                                ? AppColors.white
                                : AppColors.primary
                            : textColor,
                        fontWeight: fontWeight,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
