import 'package:eco_market/app/main-app/cart/models/product/product.dart';
import 'package:eco_market/app/main-app/cart/widgets/cart-item/cart-item.dart';
import 'package:eco_market/app/main-app/cart/widgets/checkout/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/colors/colors.dart';
import '../controllers/cart-controller.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        child: Column(
          children: [
            8.h.verticalSpace,
            SizedBox(
              width: double.infinity,
              height: 64.h,
              child: Center(
                child: Text(
                  'Shopping Cart',
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
            ),
            8.h.verticalSpace,
            Expanded(
              child: GetBuilder<CartController>(
                builder: (_) => ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  separatorBuilder: (BuildContext context, int index) {
                    return 16.h.verticalSpace;
                  },
                  itemCount: cartController.listProductsInCart.length,
                  itemBuilder: (context, index) {
                    ProductModel item =
                        cartController.listProductsInCart[index];
                    return CartItem(
                      removeItem: (index) => cartController.removeItem(index),
                      image: item.image,
                      price: item.price,
                      name: item.name,
                      unity: item.unity,
                      index: index,
                      increment: (index) => cartController.increment(index),
                      decrement: (index) => cartController.decrement(index),
                      quantity: item.quantity,
                    );
                  },
                ),
              ),
            ),
            GetBuilder<CartController>(builder: (_) => Checkout()),
          ],
        ),
      ),
    );
  }
}
