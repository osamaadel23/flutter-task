import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_osama/pages/details/widgets/description.dart';
import 'package:task_osama/pages/details/widgets/image_slider.dart';
import 'package:task_osama/pages/details/widgets/product_info.dart';
import 'package:task_osama/widgets/addto_cart_button.dart';
import 'package:task_osama/providers/shopping_cart.dart';
import 'package:task_osama/utils/scaffold_app.dart';
import '../../models/product.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    Key? key,
    this.image,
    this.price,
    this.title,
    this.productModel,
  }) : super(key: key);
  static const String route = '/details';
  final String? image;
  final int? price;
  final String? title;
  final ProductModel? productModel;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  double rating = 0;
  int quantity = 0;
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ScaffoldApp(
      hasSafeArea: false,
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Expanded(
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverPadding(
                      padding: const EdgeInsets.all(0),
                      sliver: SliverToBoxAdapter(
                          child: ImageSlider(image: widget.image)),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.all(0),
                      sliver: SliverToBoxAdapter(
                        child: ProductInfo(
                          isFavorite: isFavorite,
                          onDecrement: () {
                            if (quantity != 0) {
                              setState(() {
                                quantity = quantity - 1;
                              });
                            }
                          },
                          onIncrement: () {
                            setState(() {
                              quantity = quantity + 1;
                            });
                          },
                          price: widget.price ?? 0,
                          quantity: quantity,
                          title: widget.title ?? '',
                          toggleFavorite: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                        ),
                      ),
                    ),
                  ];
                },
                body: Column(children: [
                  TabBar(
                      indicatorColor: theme.primaryColor,
                      labelColor: theme.primaryColor,
                      unselectedLabelColor: Colors.black54,
                      labelStyle: const TextStyle(
                          fontFamily: 'alfont_com',
                          fontWeight: FontWeight.bold),
                      tabs: const [
                        Tab(
                          text: 'الوصف',
                        ),
                        Tab(
                          text: 'المواصفات',
                        ),
                      ]),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 0,
                      ),
                      child: TabBarView(
                        children: [
                          Description(
                            rating: rating,
                            onRateChange: (rating) =>
                                setState(() => this.rating = rating),
                          ),
                          Description(
                            rating: rating,
                            onRateChange: (rating) =>
                                setState(() => this.rating = rating),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AddToCartButton(
                    onTap: () {
                      if (quantity != 0) {
                        ProductModel model = widget.productModel!;
                        model.quentity = quantity;
                        model.rate = 1.5;
                        context
                            .read<ShoppingCartProvider>()
                            .addProduct(model, givenFixedQuantity: true);
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
