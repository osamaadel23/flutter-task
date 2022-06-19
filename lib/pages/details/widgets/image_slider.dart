import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key, this.image}) : super(key: key);
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 250,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(33),
              bottomRight: Radius.circular(33),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(33),
              bottomRight: Radius.circular(33),
            ),
            child: ColorFiltered(
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.saturation),
              child: Image.network(
                image ?? '',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          height: 220,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(33),
                bottomRight: Radius.circular(33),
              ),
              color: Colors.white),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
              ),
              Expanded(
                child: Image.network(
                  image ?? '',
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
