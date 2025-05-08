import 'package:eco_market/app/intro/controllers/intro_controller.dart';
import 'package:eco_market/app/main-app/favourite/controllers/favourite-controller.dart';
import 'package:eco_market/app/main-app/home/all-categories/controller/all-categories-controller.dart';
import 'package:eco_market/app/main-app/home/all-products/controller/all-products-controller.dart';
import 'package:eco_market/app/main-app/home/product-details/controller/product-detail-controller.dart';
import 'package:eco_market/app/main-app/home/product-list/controller/product-list-controller.dart';
import 'package:eco_market/app/main-app/profile/controllers/profile-controller.dart';
import 'package:get/get.dart';

import '../app/auth/main-auth/controllers/main-auth_controller.dart';
import '../app/main-app/cart/main/controllers/cart-controller.dart';
import '../app/main-app/cart/shipping-method/main/controllers/shipping-method-controller.dart';
import '../app/main-app/home/main/controllers/home-controller.dart';
import '../app/main-app/main-app-controller.dart';

class IntroPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroController());
  }
}

class MainAuthPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainAuthController());
  }
}

class MainAppPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainAppController());
  }
}

class HomePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}

class FavouritePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavouriteController());
  }
}

class CartPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController());
  }
}

class ProfilePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}

class ProductDetailsPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailsController());
  }
}

class AllCategoriesPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllCategoriesController());
  }
}

class ProductListPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductListController());
  }
}

class ShippingMethodPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShippingMethodController());
  }
}

class AllProductsPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllProductsController());
  }
}
