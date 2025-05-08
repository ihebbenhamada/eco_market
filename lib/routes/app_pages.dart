import 'package:eco_market/app/auth/main-auth/screen/main-auth-screen.dart';
import 'package:eco_market/app/intro/screen/intro-screen.dart';
import 'package:eco_market/app/main-app/favourite/screens/favourite-screen.dart';
import 'package:eco_market/app/main-app/home/all-categories/screen/all-categories-screen.dart';
import 'package:eco_market/app/main-app/home/all-products/screen/all-products-screen.dart';
import 'package:eco_market/app/main-app/home/product-details/screen/product-details-screen.dart';
import 'package:eco_market/app/main-app/home/product-list/screen/product-list-screen.dart';
import 'package:eco_market/app/main-app/profile/screens/profile-screen.dart';
import 'package:eco_market/routes/app_bindings.dart';
import 'package:get/get.dart';

import '../app/main-app/cart/main/screens/cart-screen.dart';
import '../app/main-app/home/main/screens/home-screen.dart';
import '../app/main-app/main-app-screen.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final List<GetPage> routes = <GetPage>[
    GetPage(
      name: AppRoutes.intro,
      page: () => IntroScreen(),
      binding: IntroPageBindings(),
    ),
    GetPage(
      name: AppRoutes.mainAuth,
      page: () => MainAuthScreen(),
      binding: MainAuthPageBindings(),
    ),
    GetPage(
      name: AppRoutes.mainApp,
      page: () => MainAppScreen(),
      binding: MainAppPageBindings(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
      binding: HomePageBindings(),
    ),
    GetPage(
      name: AppRoutes.favourite,
      page: () => FavouriteScreen(),
      binding: FavouritePageBindings(),
    ),
    GetPage(
      name: AppRoutes.cart,
      page: () => CartScreen(),
      binding: CartPageBindings(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => ProfileScreen(),
      binding: ProfilePageBindings(),
    ),
    GetPage(
      name: AppRoutes.productDetails,
      page: () => ProductDetailsScreen(data: {}, id: 0),
      binding: ProductDetailsPageBindings(),
    ),
    GetPage(
      name: AppRoutes.allCategories,
      page: () => AllCategoriesScreen(),
      binding: AllCategoriesPageBindings(),
    ),
    GetPage(
      name: AppRoutes.productList,
      page: () => ProductListScreen(),
      binding: ProductListPageBindings(),
    ),
    GetPage(
      name: AppRoutes.allProducts,
      page: () => AllProductsScreen(),
      binding: AllProductsPageBindings(),
    ),
  ];
}
