import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/shop/screens/order/widgets/orders_list.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(
        title: Text('My Orders',style: Theme.of(context).textTheme.headlineSmall,),
        showBackArrow: true,
      ),
      body: const Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
      child: AOrderListItems()
      )
            );
  }
}
