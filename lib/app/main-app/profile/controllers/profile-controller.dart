import 'package:eco_market/app/main-app/home/all-categories/screen/all-categories-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/controllerConfig/base_controller.dart';

class ProfileController extends BaseController {
  List<Map<String, dynamic>> listProfileItems = [
    {
      'name': 'About me',
      'icon': Icons.account_circle_outlined,
    },
    {
      'name': 'My Orders',
      'icon': Icons.fact_check_outlined,
    },
    {
      'name': 'My Favourits',
      'icon': CupertinoIcons.heart,
    },
    {
      'name': 'My Addresses',
      'icon': Icons.location_searching_outlined,
    },
    {
      'name': 'Credit Card',
      'icon': CupertinoIcons.creditcard,
    },
    {
      'name': 'Notification',
      'icon': CupertinoIcons.bell,
    },
    {
      'name': 'Sign Out',
      'icon': Icons.logout,
    },
  ];
  onTap(int index) {
    switch (index) {
      case 0:
        Get.to(() => AllCategoriesScreen());
        break;
      case 1:
        Get.to(() => AllCategoriesScreen());
        break;
      case 2:
        Get.to(() => AllCategoriesScreen());
        break;
      case 3:
        Get.to(() => AllCategoriesScreen());
        break;
      case 4:
        Get.to(() => AllCategoriesScreen());
        break;
      case 5:
        Get.to(() => AllCategoriesScreen());
        break;
      case 6:
        Get.to(() => AllCategoriesScreen());
        break;
      case 7:
        Get.to(() => AllCategoriesScreen());
        break;
      default:
        Get.to(() => AllCategoriesScreen());
        break;
    }
  }
}
