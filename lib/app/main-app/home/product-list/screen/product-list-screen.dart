import 'package:eco_market/app/main-app/home/product-list/controller/product-list-controller.dart';
import 'package:eco_market/config/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../widgets/eco-product-card/eco-product-card.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({Key? key, this.category}) : super(key: key);
  Map<String, String>? category = {};
  final productListController = Get.put(ProductListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 65.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Center(
                    child: Text(
                      category!['name']!,
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.back(id: 1);
                      },
                      child: const Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                ],
              ),
            ),
            16.h.verticalSpace,
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 16, // No horizontal spacing between items
                  mainAxisSpacing: 16,
                  crossAxisCount: 2, // Number of columns
                  childAspectRatio: 0.7, // No vertical spacing between items
                ),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: productListController.listProducts.length,
                itemBuilder: (context, index) {
                  final item = productListController.listProducts[index];
                  return EcoProductCard(
                    isNew: item['is_new'],
                    isDiscount: item['is_discount'],
                    isFavourite: item['is_favourite'],
                    onTapFavourite: () =>
                        productListController.onTapFavourite(item['id']),
                    image: item['image'],
                    price: item['price'],
                    name: item['name'],
                    unity: item['unity'],
                    onTapAddToCart: () =>
                        productListController.onTapAddToCart(item),
                    onTapProduct: () =>
                        productListController.onTapProduct(item),
                    discountValue: item['discount_value'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
