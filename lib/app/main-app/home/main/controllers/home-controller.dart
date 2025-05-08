import 'package:eco_market/app/main-app/home/all-categories/screen/all-categories-screen.dart';
import 'package:eco_market/app/main-app/home/product-details/screen/product-details-screen.dart';
import 'package:eco_market/config/controllerConfig/base_controller.dart';
import 'package:eco_market/config/image_urls/image_urls.dart';
import 'package:get/get.dart';

import '../../all-products/screen/all-products-screen.dart';
import '../../product-list/screen/product-list-screen.dart';

class HomeController extends BaseController {
  List<String> listDiscount = [
    'https://allthingstarget.com/wp-content/uploads/2023/07/Target-Teacher-Discount-Coupon-Circle-offer-2023.png',
    'https://www.collectoffers.com/blog/wp-content/uploads/2022/02/noon.jpg',
    'https://www.zingoy.com/blog/wp-content/uploads/2022/01/Beauty-Care-Products-Website-1024x576.jpg',
    'https://d.cdnsbn.com/images/english/banner_anniversarysaleaug23_1440_1.jpg',
  ];
  List<Map<String, String>> listCategories = [
    {
      'image': AppImages.cat1,
      'name': 'Vegetables',
    },
    {
      'image': AppImages.cat2,
      'name': 'Fruits',
    },
    {
      'image': AppImages.cat3,
      'name': 'Beverages',
    },
    {
      'image': AppImages.cat4,
      'name': 'Grocery',
    },
    {
      'image': AppImages.cat5,
      'name': 'Edible oil',
    },
    {
      'image': AppImages.cat6,
      'name': 'Household',
    },
    {
      'image': AppImages.cat7,
      'name': 'Babycare',
    },
  ];

  List<Map<String, dynamic>> listProducts = [
    {
      'id': 1,
      'is_new': true,
      'is_discount': false,
      'discount_value': null,
      'is_favourite': false,
      'image': AppImages.product1,
      'price': 8.5,
      'name': 'Fresh Peach',
      'unity': 'dozen',
      'rating': 0,
      'reviews_nbr': 0,
      'description': "Organic Mountain works as a seller for man",
    },
    {
      'id': 2,
      'is_new': false,
      'is_discount': true,
      'discount_value': 16,
      'is_favourite': true,
      'image': AppImages.product1,
      'price': 123.569,
      'name': 'Avacoda',
      'unity': '1 kg',
      'rating': 2.5,
      'reviews_nbr': 700,
      'description':
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      'id': 3,
      'is_new': false,
      'is_discount': false,
      'discount_value': null,
      'is_favourite': false,
      'image': AppImages.product1,
      'price': 12.820,
      'name': 'Pineapple',
      'unity': '2 kg',
      'rating': 5,
      'reviews_nbr': 100,
      'description':
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      'id': 4,
      'is_new': true,
      'is_discount': false,
      'discount_value': null,
      'is_favourite': true,
      'image': AppImages.product1,
      'price': 1.820,
      'name': 'Black Grapes',
      'unity': '1 kg',
      'rating': 4,
      'reviews_nbr': 10,
      'description':
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      'id': 5,
      'is_new': false,
      'is_discount': true,
      'discount_value': 20,
      'is_favourite': false,
      'image': AppImages.product1,
      'price': 5.9,
      'name': 'Pomegranate',
      'unity': '1 kg',
      'rating': 3,
      'reviews_nbr': 1020,
      'description':
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      'id': 6,
      'is_new': false,
      'is_discount': true,
      'discount_value': 50,
      'is_favourite': false,
      'image': AppImages.product1,
      'price': 0.500,
      'name': 'Fresh B roccoli',
      'unity': '2 kg',
      'rating': 2,
      'reviews_nbr': 340,
      'description':
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      'id': 7,
      'is_new': false,
      'is_discount': false,
      'discount_value': null,
      'is_favourite': false,
      'image': AppImages.product1,
      'price': 0.900,
      'name': 'Pomegranate',
      'unity': '1 kg',
      'rating': 1.5,
      'reviews_nbr': 550,
      'description':
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
  ];
  int currentPage = 0;
  changePage(int value) {
    currentPage = value;
    update();
  }

  onTapFavourite(int id, int index) {
    listProducts
        .firstWhere(
          (map) => map["id"] == id,
        )
        .update("is_favourite", (value) => !value);
    update();
  }

  onTapAddToCart(dynamic item) {}
  onTapProduct(Map<String, dynamic> item) {
    print(item['id']);
    Get.to(
        () => ProductDetailsScreen(
              data: item,
              id: 1,
            ),
        id: 1);
  }

  onTapCategory(Map<String, String> category) {
    Get.to(
      () => ProductListScreen(category: category),
      id: 1,
    );
  }

  onTapAllProducts() {
    Get.to(
      () => AllProductsScreen(),
      id: 1,
    );
  }

  navigateToAllCategories() {
    Get.to(() => AllCategoriesScreen(), id: 1);
  }
}
