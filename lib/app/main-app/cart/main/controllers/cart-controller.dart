import '../../../../../config/controllerConfig/base_controller.dart';
import '../../../../../config/image_urls/image_urls.dart';
import '../../models/product/product.dart';

class CartController extends BaseController {
  List<ProductModel> listProductsInCart = [];
  double subTotal = 0.0;
  double total = 0.0;
  @override
  void onInit() {
    listProductsInCart = [
      ProductModel(
        id: '1',
        isNew: true,
        isDiscount: false,
        discountValue: null,
        isFavourite: false,
        image: AppImages.product1,
        price: 1,
        name: 'Fresh Peach',
        unity: 'dozen',
        rating: 0,
        reviewsNbr: 0,
        quantity: 1,
        description: "Organic Mountain works as a seller for man",
      ),
      ProductModel(
        id: '2',
        isNew: false,
        isDiscount: true,
        discountValue: 16,
        isFavourite: true,
        image: AppImages.product1,
        price: 1,
        name: 'Avacoda',
        unity: '1 kg',
        rating: 2.5,
        reviewsNbr: 700,
        quantity: 1,
        description:
            "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
      ),
      ProductModel(
        id: '3',
        isNew: false,
        isDiscount: true,
        discountValue: 16,
        isFavourite: true,
        image: AppImages.product1,
        price: 1,
        name: 'Pineapple',
        unity: '2 kg',
        rating: 4.5,
        reviewsNbr: 300,
        quantity: 1,
        description:
            "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
      ),
      ProductModel(
        id: '4',
        isNew: false,
        isDiscount: true,
        discountValue: 20,
        isFavourite: true,
        image: AppImages.product1,
        price: 1,
        name: 'Black Grapes',
        unity: '0.5 kg',
        rating: 3,
        reviewsNbr: 200,
        quantity: 1,
        description:
            "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
      ),
      ProductModel(
        id: '5',
        isNew: false,
        isDiscount: true,
        discountValue: 16,
        isFavourite: true,
        image: AppImages.product1,
        price: 1.520,
        name: 'PomeGranate',
        unity: '1 kg',
        rating: 2.5,
        reviewsNbr: 700,
        quantity: 1,
        description:
            "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
      ),
      ProductModel(
        id: '6',
        isNew: false,
        isDiscount: true,
        discountValue: 50,
        isFavourite: true,
        image: AppImages.product1,
        price: 1.480,
        name: 'Fresh B roccoli',
        unity: '1 kg',
        rating: 2.5,
        reviewsNbr: 700,
        quantity: 1,
        description:
            "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
      ),
      ProductModel(
        id: '7',
        isNew: false,
        isDiscount: true,
        discountValue: 16,
        isFavourite: true,
        image: AppImages.product1,
        price: 1.500,
        name: 'Tomato',
        unity: '1 kg',
        rating: 2.5,
        reviewsNbr: 700,
        quantity: 1,
        description:
            "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
      ),
    ];
    getSubTotal();
    super.onInit();
  }

  getSubTotal() {
    subTotal = 0;
    listProductsInCart.forEach((item) {
      subTotal += item.price * item.quantity;
      subTotal = double.parse(subTotal.toStringAsFixed(3));
      print('subTotal : $item');
    });
    getTotal();
    update();
  }

  getTotal() {
    total = subTotal + 3;
    update();
  }

  removeItem(int index) {
    listProductsInCart.removeAt(index);
    getSubTotal();
    update();
  }

  void increment(int index) {
    if (index >= 0 && index < listProductsInCart.length) {
      listProductsInCart[index].quantity++;
      getSubTotal();
      update();
    }
  }

  void decrement(int index) {
    if (index >= 0 &&
        index < listProductsInCart.length &&
        listProductsInCart[index].quantity > 0) {
      listProductsInCart[index].quantity--;
      getSubTotal();
      update();
    }
  }
}
