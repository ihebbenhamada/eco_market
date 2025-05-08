import 'package:eco_market/app/main-app/home/all-products/controller/all-products-controller.dart';
import 'package:eco_market/config/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../widgets/eco-product-card/eco-product-card.dart';
import '../../widgets/search-bar/eco-search.dart';

class AllProductsScreen extends StatelessWidget {
  AllProductsScreen({Key? key}) : super(key: key);
  final allProductsController = Get.put(AllProductsController());
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
                      'All Products',
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
            const EcoSearchBar(),
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
                itemCount: allProductsController.listProducts.length,
                itemBuilder: (context, index) {
                  final item = allProductsController.listProducts[index];
                  return EcoProductCard(
                    isNew: item['is_new'],
                    isDiscount: item['is_discount'],
                    isFavourite: item['is_favourite'],
                    onTapFavourite: () =>
                        allProductsController.onTapFavourite(item['id']),
                    image: item['image'],
                    price: item['price'],
                    name: item['name'],
                    unity: item['unity'],
                    onTapAddToCart: () =>
                        allProductsController.onTapAddToCart(item),
                    onTapProduct: () =>
                        allProductsController.onTapProduct(item),
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
