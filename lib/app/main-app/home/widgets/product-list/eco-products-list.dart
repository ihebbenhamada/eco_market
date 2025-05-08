import 'package:flutter/material.dart';

import '../../../../../widgets/eco-product-card/eco-product-card.dart';

class EcoProductsList extends StatelessWidget {
  const EcoProductsList({
    Key? key,
    required this.listProducts,
    required this.onTapFavourite,
    required this.onTapAddToCart,
    required this.onTapProduct,
  }) : super(key: key);
  final List<Map<String, dynamic>> listProducts;
  final void Function(int, int) onTapFavourite;
  final void Function(Map<String, dynamic>) onTapAddToCart;
  final void Function(Map<String, dynamic>) onTapProduct;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 16, // No horizontal spacing between items
        mainAxisSpacing: 16,
        crossAxisCount: 2, // Number of columns
        childAspectRatio: 0.7, // No vertical spacing between items
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: listProducts.length,
      itemBuilder: (context, index) {
        final item = listProducts[index];
        return EcoProductCard(
          isNew: item['is_new'],
          isDiscount: item['is_discount'],
          isFavourite: item['is_favourite'],
          onTapFavourite: () => onTapFavourite(item['id'], index),
          image: item['image'],
          price: item['price'],
          name: item['name'],
          unity: item['unity'],
          onTapAddToCart: () => onTapAddToCart(item),
          onTapProduct: () => onTapProduct(item),
          discountValue: item['discount_value'],
        );
      },
    );
  }
}
