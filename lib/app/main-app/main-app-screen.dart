import 'package:eco_market/app/main-app/favourite/screens/favourite-screen.dart';
import 'package:eco_market/app/main-app/home/all-categories/screen/all-categories-screen.dart';
import 'package:eco_market/app/main-app/home/product-list/screen/product-list-screen.dart';
import 'package:eco_market/app/main-app/profile/screens/profile-screen.dart';
import 'package:eco_market/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../../config/colors/colors.dart';
import 'cart/main/screens/cart-screen.dart';
import 'home/main/screens/home-screen.dart';
import 'main-app-controller.dart';

class MainAppScreen extends StatelessWidget {
  MainAppScreen({Key? key}) : super(key: key);
  final _mainAppController = Get.put(MainAppController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainAppController>(
        builder: (_) => Scaffold(
          body: SizedBox.expand(
            child: IndexedStack(
              index: _mainAppController.selectedIndex,
              children: [
                Navigator(
                  key: Get.nestedKey(1),
                  onGenerateRoute: (settings) {
                    switch (settings.name) {
                      case AppRoutes.home:
                        return MaterialPageRoute(
                          builder: (_) => HomeScreen(),
                        );
                      case AppRoutes.allCategories:
                        return MaterialPageRoute(
                          builder: (_) => AllCategoriesScreen(),
                        );
                      case AppRoutes.productList:
                        return MaterialPageRoute(
                          builder: (_) => ProductListScreen(),
                        );
                      default:
                        return MaterialPageRoute(
                          builder: (_) => HomeScreen(),
                        );
                    }
                  },
                ),
                Navigator(
                  key: Get.nestedKey(2),
                  onGenerateRoute: (settings) {
                    print(settings);
                    switch (settings.name) {
                      case AppRoutes.favourite:
                        return MaterialPageRoute(
                          builder: (_) => FavouriteScreen(),
                        );
                      default:
                        return MaterialPageRoute(
                          builder: (_) => FavouriteScreen(),
                        );
                    }
                  },
                ),
                Navigator(
                  key: Get.nestedKey(3),
                  onGenerateRoute: (route) => MaterialPageRoute(
                    settings: route,
                    builder: (context) => CartScreen(),
                  ),
                ),
                Navigator(
                  key: Get.nestedKey(4),
                  onGenerateRoute: (route) => MaterialPageRoute(
                    settings: route,
                    builder: (context) => ProfileScreen(),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 8,
                ),
                child: GNav(
                  gap: 6,
                  activeColor: AppColors.white,
                  textStyle: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.white,
                  ),
                  iconSize: 24,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  tabBorderRadius: 50,
                  haptic: true,
                  duration: const Duration(milliseconds: 400),
                  tabBackgroundColor: AppColors.primary,
                  color: Colors.black,
                  tabs: const [
                    GButton(
                      icon: LineIcons.home,
                      iconSize: 22,
                      text: 'Home',
                    ),
                    GButton(
                      icon: LineIcons.heart,
                      iconSize: 22,
                      text: 'Favourite',
                    ),
                    GButton(
                      icon: LineIcons.shoppingCart,
                      iconSize: 22,
                      text: 'Cart',
                    ),
                    GButton(
                      icon: LineIcons.user,
                      iconSize: 22,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: _mainAppController.selectedIndex,
                  onTabChange: (index) => _mainAppController.route(index),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
