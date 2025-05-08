import '../../../../../config/controllerConfig/base_controller.dart';

class ProductDetailsController extends BaseController {
  ProductDetailsController();
  bool isFavourite = false;
  int quantity = 0;
  onTapFavourite() {
    isFavourite = !isFavourite;
    update();
  }

  removeQuantity() {
    if (quantity > 0) {
      quantity--;
      update();
    }
  }

  addQuantity() {
    quantity++;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
