import 'package:get/get.dart';

import '../../../../config/controllerConfig/base_controller.dart';
import '../../../../config/image_urls/image_urls.dart';
import '../../home/product-details/screen/product-details-screen.dart';

class FavouriteController extends BaseController {
  List<Map<String, dynamic>> listProducts = [
    {
      'id': 1,
      'is_new': true,
      'is_discount': false,
      'discount_value': null,
      'is_favourite': true,
      'image': AppImages.product1,
      'price': 8.5,
      'name': 'Fresh Peach',
      'unity': 'dozen',
      'rating': 2.5,
      'reviews_nbr': 700,
      'description':
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
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
      'is_favourite': true,
      'image': AppImages.product1,
      'price': 12.820,
      'name': 'Pineapple',
      'unity': '2 kg',
      'rating': 2.5,
      'reviews_nbr': 700,
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
      'rating': 2.5,
      'reviews_nbr': 700,
      'description':
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      'id': 5,
      'is_new': false,
      'is_discount': true,
      'discount_value': 20,
      'is_favourite': true,
      'image': AppImages.product1,
      'price': 5.9,
      'name': 'Pomegranate',
      'unity': '1 kg',
      'rating': 2.5,
      'reviews_nbr': 700,
      'description':
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      'id': 6,
      'is_new': false,
      'is_discount': true,
      'discount_value': 50,
      'is_favourite': true,
      'image': AppImages.product1,
      'price': 0.500,
      'name': 'Fresh B roccoli',
      'unity': '2 kg',
      'rating': 2.5,
      'reviews_nbr': 700,
      'description':
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      'id': 7,
      'is_new': false,
      'is_discount': false,
      'discount_value': null,
      'is_favourite': true,
      'image': AppImages.product1,
      'price': 0.900,
      'name': 'Pomegranate',
      'unity': '1 kg',
      'rating': 2.5,
      'reviews_nbr': 700,
      'description':
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
  ];
  onTapFavourite(int id, int index) {
    listProducts
        .firstWhere(
      (map) => map["id"] == id,
    )
        .update("is_favourite", (value) {
      if (value == true) {
        listProducts.removeAt(index);
      }
      return !value;
    });

    update();
  }

  onTapAddToCart(dynamic item) {}
  onTapProduct(Map<String, dynamic> item) {
    Get.to(
      () => ProductDetailsScreen(
        data: item,
        id: 2,
      ),
      id: 2,
    );
  }
}
