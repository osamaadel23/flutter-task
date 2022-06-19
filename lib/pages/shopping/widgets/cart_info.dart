import 'package:flutter/material.dart';
import 'package:task_osama/widgets/lang.dart';

class CartInfo extends StatelessWidget {
  const CartInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Lang(
            ar: 'السلة',
            color: theme.primaryColor,
            fontSize: 16,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: theme.primaryColor,
          )
        ],
      ),
    );
  }
}
