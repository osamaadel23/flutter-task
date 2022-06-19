import 'package:flutter/material.dart';
import 'package:task_osama/widgets/custom_icon_button.dart';
import 'package:task_osama/widgets/lang.dart';
import 'package:task_osama/widgets/rating_bar.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo(
      {Key? key,
      required this.isFavorite,
      required this.onDecrement,
      required this.onIncrement,
      required this.price,
      required this.quantity,
      required this.title,
      required this.toggleFavorite})
      : super(key: key);
  final String title;
  final int price;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback toggleFavorite;
  final bool isFavorite;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Lang(
                  ar: title,
                  textAlign: TextAlign.start,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: toggleFavorite,
                //  () {
                //   setState(() {
                //     isFavorite = !isFavorite;
                //   });
                // },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                  color: theme.primaryColor,
                  size: 28,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Lang(
            ar: price.toString() + '  جنيه',
            textAlign: TextAlign.start,
            color: theme.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AbsorbPointer(
                child: StarRating(
                  rating: 4,
                  color: const Color(0xffFFAB19),
                  onRatingChanged: (rating) {},
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomIconButton(icon: Icons.add, onTap: onIncrement
                      // () {
                      //   setState(() {
                      //     quantity = quantity + 1;
                      //   });
                      // },
                      ),
                  const SizedBox(
                    width: 10,
                  ),
                  Lang(
                    ar: quantity.toString(),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomIconButton(
                    icon: Icons.remove,
                    onTap: onDecrement,
                    // () {
                    //   if (quantity != 0) {
                    //     setState(() {
                    //       quantity = quantity - 1;
                    //     });
                    //   }
                    // },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
