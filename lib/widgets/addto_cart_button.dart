import 'package:flutter/material.dart';

import 'lang.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton(
      {Key? key, this.onTap, this.withIcon = true, this.label = 'اضف للسلة'})
      : super(key: key);
  final VoidCallback? onTap;
  final bool withIcon;
  final String label;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 15),
          ],
          borderRadius: BorderRadius.circular(10),
          color: theme.primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lang(
              ar: label,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            withIcon
                ? Row(
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                    ],
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
