import 'package:flutter/material.dart';
import 'package:task_osama/widgets/comment.dart';
import 'package:task_osama/widgets/lang.dart';
import 'package:task_osama/widgets/rating_bar.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.onRateChange,
    required this.rating,
  }) : super(key: key);
  final ValueChanged<double> onRateChange;
  final double rating;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Lang(
            color: Colors.black54,
            ar: '" لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم"',
          ),
          const SizedBox(
            height: 20,
          ),
          const Lang(
            ar: 'التقييمات',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          const SizedBox(
            height: 20,
          ),
          const Comment(
            name: "Nada Ahmed",
            rate: 3,
            comment:
                '"لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم "',
          ),
          const SizedBox(
            height: 20,
          ),
          const Comment(
            name: "Osama Adel",
            rate: 3,
            comment:
                '"لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم "',
          ),
          const SizedBox(
            height: 20,
          ),
          const Comment(
            name: "Essam Mn",
            rate: 3,
            comment:
                '"لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم "',
          ),
          const SizedBox(
            height: 20,
          ),
          const Comment(
            name: "Waleed ER",
            rate: 3,
            comment:
                '"لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم "',
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      const TextField(
                        style:
                            TextStyle(fontSize: 16, fontFamily: 'alfont_com'),
                        decoration: InputDecoration(
                          hintStyle:
                              TextStyle(fontSize: 16, fontFamily: 'alfont_com'),
                          hintText: 'اكتب تعليقك',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 15,
                            bottom: 15,
                            left: 150,
                            right: 10,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: StarRating(
                              rating: rating,
                              color: const Color(0xffFFAB19),
                              onRatingChanged: onRateChange,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send, color: theme.primaryColor))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
