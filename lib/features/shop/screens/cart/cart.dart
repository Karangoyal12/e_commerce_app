import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce/features/shop/screens/checkout/checkout.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),

          /// Items in a Cart
          child: ACartItems()),

      /// Checkout Button
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: ElevatedButton(
              onPressed: () => Get.to(() => const CheckoutScreen()),
              child: const Text('Checkout \$256'))),
    );
  }
}
