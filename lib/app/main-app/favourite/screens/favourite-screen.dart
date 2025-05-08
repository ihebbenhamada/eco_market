import 'package:eco_market/app/main-app/favourite/controllers/favourite-controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../home/widgets/product-list/eco-products-list.dart';
import '../../home/widgets/search-bar/eco-search.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({Key? key}) : super(key: key);
  final favouriteController = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        child: Column(
          children: [
            8.h.verticalSpace,
            const EcoSearchBar(),
            8.h.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GetBuilder<FavouriteController>(
                      builder: (_) => EcoProductsList(
                        listProducts: favouriteController.listProducts,
                        onTapFavourite: favouriteController.onTapFavourite,
                        onTapAddToCart: favouriteController.onTapAddToCart,
                        onTapProduct: favouriteController.onTapProduct,
                      ),
                    ),
                    16.h.verticalSpace,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
