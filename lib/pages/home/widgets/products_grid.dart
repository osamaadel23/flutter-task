import 'package:flutter/material.dart';
import 'package:task_osama/models/home.dart';
import 'package:task_osama/pages/home/widgets/product_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({Key? key, this.homeModel}) : super(key: key);
  final HomeModel? homeModel;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: homeModel?.proMoreArr?.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.55,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (c, index) => ProductItem(
        image: homeModel?.proMoreArr?[index].image ?? '',
        title: homeModel?.proMoreArr?[index].title ?? '',
        price: homeModel?.proMoreArr?[index].price ?? 0,
        productModel: homeModel!.proMoreArr![index],
      ),
    );
  }
}
