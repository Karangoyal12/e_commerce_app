import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/products/product_cards/brand_card.dart';
import 'package:e_commerce/common/widgets/products/sortable/sortable_products.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AAppBar(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(ASizes.defaultSpace),
        child: Column(
          children: [
            /// Brand Details
            ABrandCard(showBorder: true),
            SizedBox(height: ASizes.spaceBtwSections),
            ASortableProducts(),
          ],
        ),),
      ),
    );
  }
}
