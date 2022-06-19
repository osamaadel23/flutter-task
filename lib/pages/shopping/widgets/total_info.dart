import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_osama/providers/shopping_cart.dart';
import 'package:task_osama/widgets/lang.dart';

class TotalInfo extends StatelessWidget {
  const TotalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final shoppingCartProvider = context.watch<ShoppingCartProvider>();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Color(0xffEBE9E9),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lang(
            ar: 'المجموع ${shoppingCartProvider.totalPrice()} جنيه',
            color: theme.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
    );
  }
}
