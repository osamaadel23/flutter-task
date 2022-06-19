import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_osama/pages/shopping/widgets/cart_info.dart';
import 'package:task_osama/pages/shopping/widgets/shopping_item_listview.dart';
import 'package:task_osama/pages/shopping/widgets/total_info.dart';
import 'package:task_osama/providers/shopping_cart.dart';
import 'package:task_osama/utils/scaffold_app.dart';
import 'package:task_osama/widgets/addto_cart_button.dart';
import 'package:task_osama/widgets/custom_app_bar.dart';

class ShoppingCart extends StatefulWidget {
  static const route = '/shopping';
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  int total = 0;
  @override
  Widget build(BuildContext context) {
    final shoppingCartProvider = context.watch<ShoppingCartProvider>();
    return ScaffoldApp(
      hasSafeArea: false,
      body: Column(
        children: [
          const CustomAppBar(),
          const CartInfo(),
          shoppingCartProvider.getProductsList().isEmpty
              ? const Spacer()
              : const ShoppingItemList(),
          const TotalInfo(),
          const AddToCartButton(
            label: 'ادفع',
            withIcon: false,
          )
        ],
      ),
    );
  }
}
