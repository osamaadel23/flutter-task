import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_osama/models/product.dart';
import 'package:task_osama/pages/details/details.dart';
import 'package:task_osama/providers/shopping_cart.dart';
import 'package:task_osama/utils/app_navigator.dart';
import 'package:task_osama/widgets/lang.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.image,
    required this.price,
    required this.title,
    required this.productModel,
  }) : super(key: key);
  final String image;
  final int price;
  final String title;
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        AppNavigator.navigateTo(
          context,
          DetailsScreen(
            image: image,
            price: price,
            title: title,
            productModel: productModel,
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
            height: 150,
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 1),
              ],
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Lang(
                  ar: title,
                  maxLines: 1,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 10,
                ),
                Lang(
                  ar: price.toString() + '  جنيه',
                  color: theme.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    productModel.rate = 2;
                    context
                        .read<ShoppingCartProvider>()
                        .addProduct(productModel);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Lang(
                          ar: 'اضف للسلة',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
