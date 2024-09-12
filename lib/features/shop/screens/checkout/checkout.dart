import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AAppBar(
        showBackArrow: true,
        title:
            Text('Checkout', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              /// Items in a cart
              const ACartItems(showAddRemoveButtons: false),
              const SizedBox(height: ASizes.spaceBtwSections),

              /// Coupon textfield
              const ACouponCode(),
              const SizedBox(height: ASizes.spaceBtwSections),

              /// Billing Section
              ARoundedContainer(
                padding: const EdgeInsets.all(ASizes.md),
                showBorder: true,
                backgroundColor: dark ? AColors.black : AColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    ABillingAmountSection(),
                    SizedBox(height: ASizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: ASizes.spaceBtwItems),

                    /// Payment Methods
                    ABillingPaymentSection(),
                    SizedBox(height: ASizes.spaceBtwItems),

                    /// Address
                    ABillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: ElevatedButton(
              onPressed: () => Get.to(() => SuccessScreen(
                  image: AImages.successfulPaymentIcon,
                  title: 'Payment Success!',
                  subTitle: 'Your item will be shipped soon!',
                  onPressed: () => Get.offAll(() => const NavigationMenu()))),
              child: const Text('Checkout \$256'))),
    );
  }
}
