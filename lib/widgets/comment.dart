import 'package:flutter/material.dart';
import 'package:task_osama/widgets/rating_bar.dart';

import 'lang.dart';

class Comment extends StatelessWidget {
  const Comment({
    Key? key,
    this.name,
    this.comment,
    this.rate,
  }) : super(key: key);
  final String? name;
  final double? rate;
  final String? comment;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Lang(
            ar: name![0],
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Lang(
                    ar: name,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  AbsorbPointer(
                    child: StarRating(
                      onRatingChanged: (value) {},
                      color: const Color(0xffFFAB19),
                      rating: rate ?? 0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Lang(
                ar: comment,
                color: Colors.black54,
              )
            ],
          ),
        )
      ],
    );
  }
}
