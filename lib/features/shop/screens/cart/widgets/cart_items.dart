import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class ACartItems extends StatelessWidget {
  const ACartItems({super.key,  this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (_, __) => const SizedBox(
          height: ASizes.spaceBtwSections,
        ),
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (_, index) => Column(
          children: [
            const ACartItem(),
            if(showAddRemoveButtons) const SizedBox(height: ASizes.spaceBtwItems),
            if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// minus icon
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    AProductQuantityWithAddRemove(),
                  ],
                ),
                AProductPriceText(price: '256'),
              ],
            )
          ],
        ));
  }
}
