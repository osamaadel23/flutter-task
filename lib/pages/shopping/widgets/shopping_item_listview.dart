import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_osama/pages/shopping/widgets/shopping_item.dart';
import 'package:task_osama/providers/shopping_cart.dart';

class ShoppingItemList extends StatelessWidget {
  const ShoppingItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoppingCartProvider = context.watch<ShoppingCartProvider>();
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        itemBuilder: (context, index) => ShoppingItem(
            productModel: shoppingCartProvider.getProductsList()[index]),
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemCount: shoppingCartProvider.getProductsList().length,
      ),
    );
  }
}
