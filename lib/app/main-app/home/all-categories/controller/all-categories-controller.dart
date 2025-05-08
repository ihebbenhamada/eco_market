import 'package:eco_market/app/main-app/home/product-list/screen/product-list-screen.dart';
import 'package:get/get.dart';

import '../../../../../config/controllerConfig/base_controller.dart';
import '../../../../../config/image_urls/image_urls.dart';

class AllCategoriesController extends BaseController {
  AllCategoriesController();

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
  onTapCategory(Map<String, String> category) {
    Get.to(
      () => ProductListScreen(category: category),
      id: 1,
    );
  }

  @override
  void onInit() {
    super.onInit();
  }
}
