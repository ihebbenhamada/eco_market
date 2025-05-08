import 'package:eco_market/app/auth/main-auth/controllers/main-auth_controller.dart';
import 'package:eco_market/app/intro/controllers/intro_controller.dart';
import 'package:eco_market/app/main-app/favourite/controllers/favourite-controller.dart';
import 'package:eco_market/app/main-app/home/all-products/controller/all-products-controller.dart';
import 'package:eco_market/app/main-app/home/product-details/controller/product-detail-controller.dart';
import 'package:eco_market/app/main-app/home/product-list/controller/product-list-controller.dart';
import 'package:eco_market/app/main-app/profile/controllers/profile-controller.dart';
import 'package:get/get.dart';

import '../../app/main-app/cart/main/controllers/cart-controller.dart';
import '../../app/main-app/cart/shipping-method/main/controllers/shipping-method-controller.dart';
import '../../app/main-app/home/all-categories/controller/all-categories-controller.dart';
import '../../app/main-app/home/main/controllers/home-controller.dart';
import '../../app/main-app/main-app-controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroController());
    Get.lazyPut(() => MainAuthController());
    Get.lazyPut(() => MainAppController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => FavouriteController());
    Get.lazyPut(() => CartController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => ProductDetailsController());
    Get.lazyPut(() => AllCategoriesController());
    Get.lazyPut(() => ProductListController());
    Get.lazyPut(() => ShippingMethodController());
    Get.lazyPut(() => AllProductsController());
  }
}
