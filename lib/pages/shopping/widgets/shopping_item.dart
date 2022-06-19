import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_osama/models/product.dart';
import 'package:task_osama/providers/shopping_cart.dart';
import 'package:task_osama/widgets/lang.dart';
import 'package:task_osama/widgets/rating_bar.dart';

import '../../../widgets/custom_icon_button.dart';

class ShoppingItem extends StatelessWidget {
  const ShoppingItem({Key? key, required this.productModel}) : super(key: key);

  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final shoppingCartProvider = context.read<ShoppingCartProvider>();
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 1),
        ],
        color: const Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(
          6,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 70,
            height: 125,
            child: Image.network(
              productModel.image ?? '',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              children: [
                Lang(
                  ar: productModel.title,
                  color: Colors.black,
                  fontSize: 16,
                ),
                const SizedBox(
                  height: 10,
                ),
                Lang(
                  ar: productModel.price.toString() + 'جنيه  ',
                  color: Colors.black,
                  fontSize: 16,
                ),
                const SizedBox(
                  height: 10,
                ),
                StarRating(
                  onRatingChanged: (value) {},
                  color: theme.primaryColor,
                  rating: productModel.rate ?? 3,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIconButton(
                      icon: Icons.add,
                      onTap: () {
                        productModel.quentity = productModel.quentity! + 1;
                        shoppingCartProvider.editProduct(productModel);
                      },
                      cartStyle: true,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Lang(
                      ar: productModel.quentity.toString(),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomIconButton(
                      cartStyle: true,
                      icon: Icons.remove,
                      onTap: () {
                        if (productModel.quentity! > 1) {
                          productModel.quentity = productModel.quentity! - 1;
                          shoppingCartProvider.editProduct(productModel);
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {
                shoppingCartProvider.removeProduct(productModel.id!);
              },
              icon: Icon(
                Icons.delete,
                color: theme.primaryColor,
              ))
        ],
      ),
    );
  }
}
