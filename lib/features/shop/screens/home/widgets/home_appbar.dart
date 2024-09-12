import 'package:e_commerce/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class AHomeAppBar extends StatelessWidget {
  const AHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(ATexts.homeAppBarTittle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: AColors.grey)),
          Text(ATexts.homeAppBarSubTittle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: AColors.white)),
        ],
      ),
      actions: [
        ACartCounterIcon(onPressed: () => Get.to(() => const CartScreen()), iconColor: AColors.white,)
      ],
    );
  }
}
