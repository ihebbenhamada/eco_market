import 'package:eco_market/config/colors/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../config/controllerConfig/base_controller.dart';

class ShippingMethodController extends BaseController {
  final PageController pageController = PageController(initialPage: 0);

  Color startAddressBarColor = AppColors.gray1;
  Color startAddressContainerColor = AppColors.gray1;

  Color startPaymentBarColor = AppColors.gray1;
  Color startPaymentContainerColor = AppColors.gray1;

  bool addressSaved = false;
  int activePage = 0;
  onPageChanged(int index) {
    activePage = index;
    update();
  }

  saveAddress() {
    addressSaved = !addressSaved;
    update();
  }

  nextPage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
    );
  }

  animateAddress() {
    startAddressBarColor = AppColors.primary;
    Future.delayed(const Duration(milliseconds: 500), () {
      startAddressContainerColor = AppColors.primary;
      update();
    });
    update();
  }

  animatePayment() {
    startPaymentBarColor = AppColors.primary;
    Future.delayed(const Duration(milliseconds: 500), () {
      startPaymentContainerColor = AppColors.primary;
      update();
    });
    update();
  }
}
